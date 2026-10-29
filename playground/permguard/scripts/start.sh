#!/usr/bin/env bash
# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

server_bin="${1:?usage: start.sh <permguard-all-in-one> <config>}"
config="${2:?usage: start.sh <permguard-all-in-one> <config>}"
runtime_dir="$(cd "$(dirname "${config}")" && pwd)"
pid_file="${runtime_dir}/.server.pid"
log_file="${runtime_dir}/server.log"

if [ -f "${pid_file}" ]; then
    pid="$(cat "${pid_file}")"
    if [[ "${pid}" =~ ^[0-9]+$ ]] && kill -0 "${pid}" 2>/dev/null; then
        printf 'Permguard all-in-one is already running (pid %s).\n' "${pid}"
        exit 0
    fi
    rm -f "${pid_file}"
fi

if curl --fail --silent --output /dev/null \
    http://127.0.0.1:5443/.well-known/server-configuration 2>/dev/null; then
    printf 'error: another Permguard server is already listening on 127.0.0.1:5443\n' >&2
    printf 'Stop that server or change this playground port set; it will not be reused blindly.\n' >&2
    exit 69
fi

nohup "${server_bin}" "${config}" >"${log_file}" 2>&1 &
pid=$!
printf '%s\n' "${pid}" >"${pid_file}"

for _ in $(seq 1 120); do
    if curl --fail --silent --output /dev/null \
        http://127.0.0.1:5443/.well-known/server-configuration 2>/dev/null; then
        printf 'Permguard all-in-one is ready (pid %s, log %s).\n' "${pid}" "${log_file}"
        exit 0
    fi
    if ! kill -0 "${pid}" 2>/dev/null; then
        printf 'error: Permguard stopped before becoming ready\n' >&2
        tail -40 "${log_file}" >&2 || true
        rm -f "${pid_file}"
        exit 1
    fi
    sleep 0.5
done

printf 'error: Permguard did not become ready in 60 seconds\n' >&2
tail -40 "${log_file}" >&2 || true
exit 1
