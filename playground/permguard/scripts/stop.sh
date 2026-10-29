#!/usr/bin/env bash
# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

runtime_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
pid_file="${runtime_dir}/.server.pid"

if [ ! -f "${pid_file}" ]; then
    printf 'The playground server is not running.\n'
    exit 0
fi

pid="$(cat "${pid_file}")"
if ! [[ "${pid}" =~ ^[0-9]+$ ]]; then
    printf "error: invalid pid in '%s'\n" "${pid_file}" >&2
    exit 1
fi

if kill -0 "${pid}" 2>/dev/null; then
    kill -TERM "${pid}"
    for _ in $(seq 1 50); do
        kill -0 "${pid}" 2>/dev/null || break
        sleep 0.1
    done
fi

rm -f "${pid_file}"
printf 'Stopped the playground server.\n'
