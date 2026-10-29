#!/usr/bin/env bash
# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

cli="${1:?usage: list-stream.sh <permguard> <decisions|events>}"
stream_type="${2:?usage: list-stream.sh <permguard> <decisions|events>}"
case "${stream_type}" in
    decisions | events) ;;
    *) printf 'error: unknown stream type %s\n' "${stream_type}" >&2; exit 64 ;;
esac

ledger_workspace="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
control_endpoint="${PERMGUARD_CONTROL_ENDPOINT:-http://127.0.0.1:6443}"
admin_endpoint="${PERMGUARD_ADMIN_ENDPOINT:-https://127.0.0.1:5444}"
tls_ca_file="${PERMGUARD_TLS_CA_FILE:-${ledger_workspace}/.volume/all-in-one/tls/ca.pem}"

control() {
    "${cli}" --control-endpoint "${control_endpoint}" -o json "$@"
}

host() {
    "${cli}" --host-endpoint "${admin_endpoint}" \
        --tls-ca-file "${tls_ca_file}" "$@"
}

zone_id="$(control zones list | jq -er '.zones[] | select(.name == "commerce") | .id')"
ledger_id="$(control ledgers list --zone commerce | \
    jq -er '.ledgers[] | select(.name == "order-platform") | .id')"
resource="plane/data/zone/${zone_id}/ledger/${ledger_id}"

host host streams runs data "${stream_type}" --resource "${resource}"
