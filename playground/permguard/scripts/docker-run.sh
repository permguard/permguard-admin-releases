#!/usr/bin/env bash
# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

action="${1:-help}"
source_workspace=/playground
runtime_workspace=/work/permguard
cli=/usr/local/bin/permguard
host_endpoint="${PERMGUARD_HOST_ENDPOINT:-http://127.0.0.1:5443}"

wait_for_server() {
    printf 'Waiting for the Permguard Host'
    for _ in $(seq 1 90); do
        if curl --fail --silent --show-error \
            "${host_endpoint}/.well-known/server-configuration" >/dev/null 2>&1; then
            printf ' ready.\n'
            return 0
        fi
        printf '.'
        sleep 1
    done
    printf '\nerror: Permguard did not become ready at %s\n' "${host_endpoint}" >&2
    return 1
}

prepare_workspace() {
    mkdir -p "${runtime_workspace}"
    cp "${source_workspace}/manifest.yml" \
        "${source_workspace}/.permguardignore" \
        "${runtime_workspace}/"
    for directory in payment-api order-operations refund-workflow requests events tests; do
        cp -R "${source_workspace}/${directory}" "${runtime_workspace}/"
    done
}

case "${action}" in
    wait)
        wait_for_server
        ;;
    bootstrap)
        wait_for_server
        prepare_workspace
        "${source_workspace}/scripts/bootstrap.sh" "${cli}" "${runtime_workspace}"
        ;;
    demo)
        wait_for_server
        prepare_workspace
        "${source_workspace}/scripts/run-demo.sh" "${cli}" "${runtime_workspace}"
        ;;
    check)
        prepare_workspace
        "${cli}" -w "${runtime_workspace}" validate
        "${cli}" -w "${runtime_workspace}" test
        ;;
    decisions | events)
        wait_for_server
        "${source_workspace}/scripts/list-stream.sh" "${cli}" "${action}"
        ;;
    help | --help | -h)
        printf 'usage: docker-run.sh <wait|bootstrap|demo|check|decisions|events>\n'
        ;;
    *)
        printf 'error: unknown Docker playground action %s\n' "${action}" >&2
        exit 64
        ;;
esac
