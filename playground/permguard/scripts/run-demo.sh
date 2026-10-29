#!/usr/bin/env bash
# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

cli="${1:?usage: run-demo.sh <permguard> <ledger-workspace>}"
workspace="$(cd "${2:?usage: run-demo.sh <permguard> <ledger-workspace>}" && pwd)"
data_endpoint="${PERMGUARD_DATA_ENDPOINT:-http://127.0.0.1:7543}"
session="atlas-refund-$(date +%s)-$$"
principal="AtlasCommerce::Workflow::\"${session}\""
response_file="$(mktemp "${TMPDIR:-/tmp}/permguard-atlas-response.XXXXXX")"
trap 'rm -f -- "${response_file}"' EXIT

for dependency in jq curl; do
    command -v "${dependency}" >/dev/null 2>&1 || {
        printf "error: '%s' is required by the playground\n" "${dependency}" >&2
        exit 69
    }
done

data() {
    "${cli}" --data-endpoint "${data_endpoint}" "$@"
}

native_request() {
    local label="$1" fixture="$2" expected="$3"
    printf '\n=== %s ===\n' "${label}"
    data -w "${workspace}" -o json check --ignore-workspace \
        --zone commerce --ledger order-platform -f "${workspace}/${fixture}" \
        >"${response_file}"
    jq . "${response_file}"
    jq -e --argjson expected "${expected}" '.decision == $expected' \
        "${response_file}" >/dev/null
}

temporal_event() {
    local label="$1" fixture="$2" suffix="$3" expected="$4" status
    printf '\n=== %s ===\n' "${label}"
    status="$({
        jq --arg event_id "${session}-${suffix}" --arg principal "${principal}" \
            '.event.data.event_id = $event_id
             | .event.data.principal = $principal
             | .event.data.occurred_at = (now | todate)' \
            "${workspace}/${fixture}"
    } | curl --silent --show-error \
        --output "${response_file}" \
        --write-out '%{http_code}' \
        --request POST "${data_endpoint}/temporal/v1alpha1/events" \
        --header 'content-type: application/json' \
        --data-binary @-)"
    jq . "${response_file}"
    case "${status}" in
        2??) ;;
        *) printf 'error: temporal submission returned HTTP %s\n' "${status}" >&2; exit 1 ;;
    esac
    if [ "${expected}" = accepted ]; then
        jq -e '.outcome == "accepted"' "${response_file}" >/dev/null
    else
        jq -e --argjson expected "${expected}" \
            '.outcome == "decided" and .decision == $expected' \
            "${response_file}" >/dev/null
    fi
}

native_request 'Rego: authorized payment capture (permit)' \
    requests/payment-capture-permit.json true
native_request 'Rego: untrusted over-capture attempt (deny)' \
    requests/payment-capture-deny.json false
native_request 'Cedar: merchant finance refund with MFA (permit)' \
    requests/order-refund-permit.json true
native_request 'Cedar: support agent refund attempt (deny)' \
    requests/order-refund-deny.json false

temporal_event 'Dogwood: release before workflow approval (deny)' \
    events/release-before-review.json release-before-review false
temporal_event 'Dogwood: refund request recorded (history only)' \
    events/refund-requested.json refund-requested accepted
temporal_event 'Dogwood: risk approval recorded (history only)' \
    events/risk-review-approved.json risk-review-approved accepted
temporal_event 'Dogwood: release after request and risk approval (permit)' \
    events/release-after-review.json release-after-review true
temporal_event 'Dogwood: cancellation recorded (history only)' \
    events/refund-cancelled.json refund-cancelled accepted
temporal_event 'Dogwood: release after cancellation (deny)' \
    events/release-after-cancellation.json release-after-cancellation false

printf '\n=== Durable decision-log stream ===\n'
"$(dirname "${BASH_SOURCE[0]}")/list-stream.sh" "${cli}" decisions

printf '\n=== Durable temporal-event stream ===\n'
"$(dirname "${BASH_SOURCE[0]}")/list-stream.sh" "${cli}" events

printf '\nDemo complete. Refund workflow session: %s\n' "${session}"
