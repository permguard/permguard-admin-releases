<!-- Copyright (c) 2022 Nitro Agility S.r.l. -->
<!-- SPDX-License-Identifier: Apache-2.0 -->

# Atlas Commerce playground

> **Preview:** Permguard Admin, Dogwood, and this playground are preview software. APIs, policy
> formats, image tags, and stored data may change between releases. Do not use this setup for
> production workloads.

This playground is a realistic order-to-refund authorization example. It runs a local Permguard
all-in-one server and publishes `commerce/order-platform`, a ledger with three complementary
partitions:

| Profile | Runtime | Responsibility |
| --- | --- | --- |
| `gateway` | Rego | Service-to-service payment APIs: mTLS, OAuth-like scopes, merchant isolation, idempotency, and authorized-amount limits. |
| `operations` | Cedar | Back-office order access: merchant-scoped roles, MFA for refunds, and four-eyes control for high-value refunds. |
| `refund` | Dogwood | Temporal workflow: release only after a recent refund request and risk approval, unless the case was cancelled. |

The demo deliberately exercises transitions, not only static permit/deny fixtures. The same refund
release is denied before approval, permitted after approval, and denied again after cancellation.
This produces useful decision logs and a correlated Dogwood event history for the Events explorer.

## Requirements

- Docker Desktop, or Docker Engine with the Compose plugin;
- one command runner: [Task](https://taskfile.dev/), Make, or PowerShell 7/Windows PowerShell.

The Docker workflow does not require Rust, a local Permguard checkout, `curl`, or `jq`. It pulls the
official [`permguard/all-in-one:latest`](https://hub.docker.com/r/permguard/all-in-one) server from
Docker Hub and builds a small toolbox from the matching official
[`permguard/cli:latest`](https://hub.docker.com/r/permguard/cli) image. Set `PERMGUARD_VERSION` to
use an exact release instead; pinning an exact version is recommended for repeatable demos.

## Start and load all sample data

The `demo` command performs the complete installation: it pulls the selected images, starts
Permguard, waits until it is ready, publishes all Rego/Cedar/Dogwood policies, sends the example
requests and Dogwood events, and prints both durable streams.

With Task, from the `permguard-admin-releases` repository root:

```bash
task playground:docker:demo
```

With Make:

```bash
make playground-docker-demo
```

On Windows, with PowerShell:

```powershell
.\playground\Playground.ps1 demo
```

Each entry point pulls the selected Permguard image, starts the all-in-one server, waits for
discovery, creates the `commerce` zone and `order-platform` ledger, validates and publishes the
policy set, then generates:

- a permitted and a denied Rego payment decision;
- a permitted and a denied Cedar refund decision;
- six correlated Dogwood occurrences, including three refund-release decisions;
- durable Host streams for both decisions and temporal events.

Useful commands:

| Purpose | Task | Make | PowerShell |
| --- | --- | --- | --- |
| Pull images and build the toolbox | `task playground:docker:pull` | `make playground-docker-pull` | `.\playground\Playground.ps1 pull` |
| Start the server and wait until ready | `task playground:docker:up` | `make playground-docker-up` | `.\playground\Playground.ps1 up` |
| Publish all policies | `task playground:docker:bootstrap` | `make playground-docker-bootstrap` | `.\playground\Playground.ps1 bootstrap` |
| Run the complete demo | `task playground:docker:demo` | `make playground-docker-demo` | `.\playground\Playground.ps1 demo` |
| Validate and test policies offline | `task playground:docker:check` | `make playground-docker-check` | `.\playground\Playground.ps1 check` |
| Read decision logs | `task playground:docker:decisions` | `make playground-docker-decisions` | `.\playground\Playground.ps1 decisions` |
| Read Dogwood events | `task playground:docker:events` | `make playground-docker-events` | `.\playground\Playground.ps1 events` |
| Follow server logs | `task playground:docker:logs` | `make playground-docker-logs` | `.\playground\Playground.ps1 logs` |
| Stop and preserve data | `task playground:docker:down` | `make playground-docker-down` | `.\playground\Playground.ps1 down` |
| Stop and delete all demo data | `task playground:docker:reset` | `make playground-docker-reset` | `.\playground\Playground.ps1 reset` |
| Uninstall everything | `task playground:docker:destroy` | `make playground-docker-destroy` | `.\playground\Playground.ps1 destroy` |

To see the individual Compose steps without a runner:

```bash
docker compose -f playground/compose.yml pull permguard
docker compose -f playground/compose.yml build --pull toolbox
docker compose -f playground/compose.yml up -d permguard
docker compose -f playground/compose.yml run --rm toolbox bootstrap
docker compose -f playground/compose.yml run --rm toolbox demo
```

The server state lives in the Compose named volume `permguard-atlas-commerce_permguard-data`.
`down` preserves it; `reset` deletes it but keeps the images cached. The toolbox copies the
committed example into an ephemeral workspace, so Docker never writes `.permguard` metadata into
the repository.

## Destroy and clean up everything

The destructive command removes the playground containers, network, named volume, generated
catalog, keys, decisions, events, toolbox image, all-in-one image, and the selected CLI image.
`uninstall` is an alias for `destroy`.

With Task:

```bash
task playground:docker:destroy
# alias: task playground:docker:uninstall
```

With Make:

```bash
make playground-docker-destroy
# alias: make playground-docker-uninstall
```

On Windows, with PowerShell:

```powershell
.\playground\Playground.ps1 destroy
# alias: .\playground\Playground.ps1 uninstall
```

Task and PowerShell ask for `YES` before deleting anything. Make treats the explicit
`playground-docker-destroy` target as confirmation. Docker refuses to remove an image that another
container is still using; in that case the shared image is left in place.

To pin a release, set the version before any command:

```bash
PERMGUARD_VERSION=0.1.6 task playground:docker:demo
```

```powershell
$env:PERMGUARD_VERSION = "0.1.6"
.\playground\Playground.ps1 demo
```

## Explore it with Permguard Admin

Keep the server running and open the installed Permguard Admin application. Select the empty
`playground/workspace` folder. The standard `local` Control Plane at `http://127.0.0.1:5443`
becomes active automatically; clone `order-platform` from the `commerce` zone to inspect the
manifest, policies, decisions, and events. The playground binds the standard Host discovery,
control-plane, and data-plane ports (`5443`, `6443`, and `7443`) to host loopback. The protected Host
TLS listener stays on container loopback at its standard `5444` port.

The committed `playground/workspace/.keep` is only a placeholder. Everything the application writes
below that folder is intentionally ignored.

## Scenario walkthrough

The native API examples represent an order for EUR 129.00:

1. `checkout-service` captures exactly the authorized amount using mTLS, the required scope, and an
   idempotency key: Rego permits it.
2. A compromised integration tries to capture more than was authorized without verified mTLS:
   Rego denies it.
3. A finance manager for the same merchant requests a partial refund with MFA: Cedar permits it.
4. A support agent attempts the same operation: Cedar denies it.
5. The refund workflow asks to release funds before review, records the request and risk approval,
   asks again, records a cancellation, and asks a third time. Dogwood answers deny, permit, deny.

Every fixture is ordinary JSON under `permguard/requests` or `permguard/events`; edit one and rerun
`task playground:docker:check` or `task playground:docker:demo` to see how the evidence changes.

## Local source-checkout workflow

Contributors who have the `permguard` repository checked out beside this repository can still run
the scenario without Docker. This path requires Rust, `curl`, and `jq`:

```bash
task playground:demo
task playground:decisions
task playground:events
task playground:down
```

## All-in-one evidence note

The all-in-one topology is intentionally small. Permguard writes decisions and events to the Host's
producer streams under the ignored `.volume` directory, and the `decisions` and `events` tasks show
those durable runs. A production split-plane deployment additionally ships evidence from member Hosts
to the coordinator Control Plane. The local all-in-one Host cannot join itself, so this playground is
for policy evaluation and producer-stream exploration rather than a topology simulation.
