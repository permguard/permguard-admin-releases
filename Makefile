# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

PLAYGROUND_MAKE := $(MAKE) -C playground

.PHONY: playground-docker-pull playground-docker-up playground-docker-bootstrap \
	playground-docker-demo playground-docker-check playground-docker-decisions \
	playground-docker-events playground-docker-logs playground-docker-down \
	playground-docker-reset playground-docker-destroy playground-docker-uninstall

playground-docker-pull:
	$(PLAYGROUND_MAKE) docker-pull

playground-docker-up:
	$(PLAYGROUND_MAKE) docker-up

playground-docker-bootstrap:
	$(PLAYGROUND_MAKE) docker-bootstrap

playground-docker-demo:
	$(PLAYGROUND_MAKE) docker-demo

playground-docker-check:
	$(PLAYGROUND_MAKE) docker-check

playground-docker-decisions:
	$(PLAYGROUND_MAKE) docker-decisions

playground-docker-events:
	$(PLAYGROUND_MAKE) docker-events

playground-docker-logs:
	$(PLAYGROUND_MAKE) docker-logs

playground-docker-down:
	$(PLAYGROUND_MAKE) docker-down

playground-docker-reset:
	$(PLAYGROUND_MAKE) docker-reset

playground-docker-destroy:
	$(PLAYGROUND_MAKE) docker-destroy

playground-docker-uninstall:
	$(PLAYGROUND_MAKE) docker-uninstall
