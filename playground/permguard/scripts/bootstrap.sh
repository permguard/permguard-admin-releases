#!/usr/bin/env bash
# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

cli="${1:?usage: bootstrap.sh <permguard> <ledger-workspace>}"
workspace="$(cd "${2:?usage: bootstrap.sh <permguard> <ledger-workspace>}" && pwd)"
control_endpoint="${PERMGUARD_CONTROL_ENDPOINT:-http://127.0.0.1:6443}"
data_endpoint="${PERMGUARD_DATA_ENDPOINT:-http://127.0.0.1:7443}"

for dependency in jq curl; do
    command -v "${dependency}" >/dev/null 2>&1 || {
        printf "error: '%s' is required by the playground\n" "${dependency}" >&2
        exit 69
    }
done

control() {
    "${cli}" --control-endpoint "${control_endpoint}" "$@"
}

data() {
    "${cli}" --data-endpoint "${data_endpoint}" "$@"
}

zones="$(control zones list -o json)"
if ! jq -e '.zones[]? | select(.name == "commerce")' >/dev/null <<<"${zones}"; then
    control zones create commerce
fi

ledgers="$(control ledgers list --zone commerce -o json)"
if ! jq -e '.ledgers[]? | select(.name == "order-platform")' >/dev/null <<<"${ledgers}"; then
    control ledgers create --zone commerce order-platform
fi

if [ ! -f "${workspace}/.permguard/config" ]; then
    "${cli}" -w "${workspace}" init order-platform --language cedar,rego,dogwood
    "${cli}" -w "${workspace}" remote add origin "${control_endpoint}"
    "${cli}" -w "${workspace}" checkout origin/commerce/order-platform
fi

"${cli}" -w "${workspace}" validate
"${cli}" -w "${workspace}" plan
control -w "${workspace}" apply -m "Publish the Atlas Commerce playground"

printf 'Waiting for the in-process mirror to load the ledger'
for _ in $(seq 1 60); do
    answer="$(data -w "${workspace}" -o json check \
        --ignore-workspace --zone commerce --ledger order-platform \
        -f "${workspace}/requests/payment-capture-permit.json" 2>/dev/null || true)"
    if jq -e '.evaluated == true and .decision == true' >/dev/null 2>&1 <<<"${answer}"; then
        printf ' ready.\n'
        exit 0
    fi
    printf '.'
    sleep 1
done

printf '\nerror: the data plane did not load commerce/order-platform\n' >&2
printf '%s\n' "${answer}" >&2
exit 1
