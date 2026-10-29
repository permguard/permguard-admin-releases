# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

COMPOSE := docker compose -f compose.yml
PERMGUARD_REGISTRY ?= permguard
PERMGUARD_VERSION ?= latest
CLI_IMAGE := $(PERMGUARD_REGISTRY)/cli:$(PERMGUARD_VERSION)

export PERMGUARD_REGISTRY
export PERMGUARD_VERSION

.PHONY: docker-pull docker-up docker-bootstrap docker-demo docker-check \
	docker-decisions docker-events docker-logs docker-down docker-reset \
	docker-destroy docker-uninstall

docker-pull:
	$(COMPOSE) pull permguard
	$(COMPOSE) build --pull toolbox

docker-up: docker-pull
	$(COMPOSE) up -d permguard
	$(COMPOSE) run --rm toolbox wait

docker-bootstrap: docker-up
	$(COMPOSE) run --rm toolbox bootstrap

docker-demo: docker-bootstrap
	$(COMPOSE) run --rm toolbox demo

docker-check: docker-up
	$(COMPOSE) run --rm toolbox check

docker-decisions: docker-up
	$(COMPOSE) run --rm toolbox decisions

docker-events: docker-up
	$(COMPOSE) run --rm toolbox events

docker-logs:
	$(COMPOSE) logs -f permguard

docker-down:
	$(COMPOSE) down --remove-orphans

docker-reset:
	$(COMPOSE) down --volumes --remove-orphans

docker-destroy:
	$(COMPOSE) --profile tools down --volumes --remove-orphans --rmi all
	-docker image rm $(CLI_IMAGE)

docker-uninstall: docker-destroy
