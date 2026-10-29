# syntax=docker/dockerfile:1
# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

ARG PERMGUARD_REGISTRY=permguard
ARG PERMGUARD_VERSION=latest
FROM ${PERMGUARD_REGISTRY}/cli:${PERMGUARD_VERSION} AS permguard-cli

FROM alpine:3.22

RUN apk add --no-cache bash ca-certificates curl jq \
    && mkdir -p /work /var/lib/permguard \
    && chown -R 65532:65532 /work /var/lib/permguard

COPY --from=permguard-cli /usr/local/bin/permguard /usr/local/bin/permguard

ENV HOME=/work \
    TMPDIR=/work

USER 65532:65532
WORKDIR /work

ENTRYPOINT ["/usr/local/bin/permguard"]
CMD ["--help"]
