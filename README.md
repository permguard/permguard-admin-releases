<!--
Copyright (c) 2022 Nitro Agility S.r.l.
SPDX-License-Identifier: LicenseRef-Permguard-Admin-Binary
-->

# Permguard Admin

<p align="center">
  <img src="assets/hero-preview.png" alt="Permguard Admin, preview. The Control Plane, administered. The desktop administration tool for Permguard. For macOS, Linux and Windows, free download." width="820">
</p>

<p align="center">
  <a href="https://github.com/permguard/permguard-admin-releases/releases/latest"><b>Download</b></a> ·
  <a href="https://permguard.com"><b>Website</b></a> ·
  <a href="https://docs.permguard.com/"><b>Documentation</b></a> ·
  <a href="https://github.com/permguard/permguard"><b>Permguard</b></a>
</p>

<p align="center">
  <img src="assets/diagrams/deployment.png" alt="The deployment of a Permguard server, drawn by Permguard Admin from what the server publishes: Permguard Admin reaches the Host listener on 5443 over HTTP; inside the Server Host, the Control Plane on 6443 mirrors policies to the Data Plane on 7443, which ships decisions and events back; the Data Plane serves Cedar, Dogwood and Rego; below, the listeners control-http-grpc, data-http-grpc, host-api and telemetry." width="820">
</p>

<p align="center"><sub>Your server, drawn live: every plane, port, listener and flow, and how policies, decisions and events move between them.</sub></p>

<p align="center">
  <img src="assets/diagrams/ledger-diagrams.png" alt="Two ledger files as diagrams. Left, the manifest of mission-control: the profiles api, app and temporal point to the partitions api-gateway, mission-app and launch-window, which run on Rego, Cedar and Dogwood. Right, a Cedar schema: the actions BadgeIn, BadgeOut and Launch link their principal Nebula::Operator and their resource Nebula::Console, beside the input, output and context types." width="820">
</p>

<p align="center"><sub>Your policies, drawn: which profile asks which partition and runtime, and what each action is allowed to touch.</sub></p>

**The desktop administration tool for the Permguard Control Plane.**

> [!WARNING]
> **Preview.** Permguard Admin is a preview release, not yet stable.
> Screens and behaviour may change from one version to the next, and some features are still experimental.
> Try it on development and test environments, and tell us what you find in the [issues](https://github.com/permguard/permguard-admin-releases/issues).

Permguard Admin is for the people who administer [Permguard](https://github.com/permguard/permguard).
Connect it to your Control Planes and manage them from one window: the server that hosts them, the ledgers and policies they serve, the events and decisions they record.
No terminal, no curl, no guessing.

<p align="center">
  <img src="assets/screens/observe.png" alt="The Observe page: the server of the current control plane, active, with its transport, TLS, version and round trip, and a map of the Host, the Control Plane and the Data Plane." width="820">
</p>

## What you can do

<p align="center">
  <img src="assets/sections.png" alt="Four sections. Explorer, observe: the Host and its planes, the live events, the decision logs. Ledgers, sync: clone, pull when the head moves, read files and commits. PDP, ask: compose a request and the data plane answers. Settings, connect: control planes, TLS, token files, theme and language." width="820">
</p>

### See your deployment at a glance

Permguard Admin draws your server as it really is: the Host, the Control Plane and the Data Plane, their ports and listeners, and how policies, decisions and events flow between them.
Click anything to read its details, double-click a plane to open it.

<p align="center">
  <img src="assets/screens/deployment.png" alt="The Deployment view: an all-in-one server with its Host listener, Control Plane, Data Plane and listeners, the flows between them, and the details of the selected Data Plane." width="820">
</p>

### Follow every event, live

Everything your data planes record, as it happens, in a stream you can read like logs.
A timeline shows the requests, responses and errors over the period you choose, from the last five minutes to the last thirty days.
Spot a spike, drag across it to zoom in, and the list below shows just those events.
Open any event to see when it happened, under which policies and commit, and its full payload.

<p align="center">
  <img src="assets/screens/events.png" alt="The Events page over the last hour: requests, responses and errors on a stacked timeline with two bursts; below, the live stream, newest first, and one event open with its type, times, ledger, profile, commit and history key." width="820">
</p>

<details>
<summary><b>Zoom into a spike</b></summary>

<p align="center">
  <img src="assets/screens/events-zoom.png" alt="The Events page zoomed into eleven minutes by dragging on the timeline: the pointer over one bar shows its counts by kind, and the stream lists only the events of that period." width="820">
</p>

</details>

### See every decision

Every permit and every deny your data plane records, in one list.
Search by subject, action, resource or policy, filter by time and outcome, and open any decision to see the policies and the commit behind it.

<p align="center">
  <img src="assets/screens/decision-logs.png" alt="The Decision logs page: the decisions of the current control plane, newest first, each with its time, ledger, permit or deny, subject, action, resource, the policies that decided it and its latency; one decision is open in full." width="820">
</p>

### Keep your ledgers at hand

The Sync Center lists every ledger your control plane serves.
Clone the ones you care about in one click, and Permguard Admin tells you the moment a new version is published, so you pull it when you are ready.

<p align="center">
  <img src="assets/screens/sync-center.png" alt="The Sync Center: acme/main-ledger is on this computer and has a new version to pull; acme/payments and globex/gateway are on the server, each ready to clone." width="820">
</p>

### Read your policies as diagrams

Open a manifest or a schema and switch it to Visual: profiles, partitions and runtimes, actions and the entities they act on, laid out as a map you can click through.

<p align="center">
  <img src="assets/screens/ledger-visual.png" alt="A ledger manifest opened as a diagram: three profiles pointing to their partitions and runtimes, one profile selected with its details." width="820">
</p>

### Read every change to your policies

Open a ledger to browse its policies, and its history to see who changed what, when, and why.
Every commit shows its diff, line by line.

<p align="center">
  <img src="assets/screens/ledger-commit.png" alt="A commit of main-ledger, owners: contractors may not write, with the change to cedar/document-owners.cedar shown as a diff." width="820">
</p>

<details>
<summary><b>Browse the policies of a ledger</b></summary>

<p align="center">
  <img src="assets/screens/ledger-files.png" alt="The files of main-ledger: the manifest, the Cedar policies and schema, and the Rego policy; one Cedar policy is open with syntax highlighting." width="820">
</p>

</details>

### Ask before you ship

Write a request, or import one from a JSON file, pick the ledger and the profile, and ask your data plane directly.
The answer comes back next to it, with the policies that decided it, how long it took, and the command line to ask the same thing again from a script.

Then put it under load.
Open a benchmark suite, a folder of real requests with the decision each one must get, and Permguard Admin runs it against your data plane in parallel, round after round, drawing every call as it happens and telling you whether the decisions and the latencies held.
The playground ships three suites to start from.

<p align="center">
  <img src="assets/screens/evaluation.png" alt="The Policy Decision Point page: a request for User alice to read Document budget-2026, and the answer of the data plane: permit, by document-readers and gateway-access, in 41 ms." width="820">
</p>

### Connect to all your Control Planes

Add your local Control Plane, staging and production side by side, over HTTP or gRPC, with TLS, mutual TLS and bearer tokens.
Switch between them from the top bar; a dot tells you at a glance which ones are online.

<p align="center">
  <img src="assets/screens/control-planes.png" alt="The Control planes page: local, active and current, over HTTP; staging, over gRPC with mutual TLS and a bearer token." width="820">
</p>

### Make it yours

Light, dark, or the one your system uses.
English, Italiano, Español and Français.

<p align="center">
  <img src="assets/screens/themes.png" alt="The Observe page in dark and light, side by side." width="820">
</p>

## Try a real policy set

The [Atlas Commerce playground](playground/README.md) runs a complete order-to-refund scenario on a
local Permguard server. Its ledger combines Rego payment API controls, Cedar back-office roles, and a
Dogwood workflow whose refund decision changes from deny to permit and back to deny as approval and
cancellation events arrive.

With Docker Desktop or Docker Engine with the Compose plugin:

```sh
task playground:docker:demo
# or: make playground-docker-demo
```

On Windows, run `.\playground\Playground.ps1 demo` from PowerShell. The workflow pulls the official
Permguard `latest` images, publishes the ledger, sends the example requests and events, and prints
both durable evidence streams. The playground uses Permguard's standard loopback ports, so
Permguard Admin discovers it as the local server. See the playground README for version pinning,
individual loading steps, and cleanup commands. To uninstall every playground container, volume,
network and selected image, run `task playground:docker:destroy`, `make playground-docker-destroy`,
or `.\playground\Playground.ps1 destroy`.

## Download

Get the latest version from the [Releases](https://github.com/permguard/permguard-admin-releases/releases/latest) page.

| System  | Download                                                 |
| ------- | -------------------------------------------------------- |
| macOS   | `_darwin_universal.dmg`, Apple silicon and Intel         |
| Windows | `_windows_amd64_setup.exe` or `_windows_amd64.msi`       |
| Linux   | `.deb`, `.rpm` or `.AppImage`, for `amd64` and `arm64`   |

Each release also carries `checksums.txt`, to check that the file you downloaded is the one we published:

```sh
shasum -a 256 -c checksums.txt --ignore-missing
```

## Install

### With Homebrew

On macOS, from the same tap as the Permguard command line:

```sh
brew trust permguard/tap      # once: Homebrew 7 loads casks only from trusted taps
brew install permguard/tap/permguard-admin
```

It installs the command line too, which Permguard Admin needs.
To install a given version, `brew install permguard/tap/permguard-admin@0.1.0`; to update, `brew upgrade permguard-admin`.

### With one command

The install scripts download the latest release, check it against `checksums.txt`, and install it.

**macOS and Linux:**

```sh
curl -fsSL https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.sh | sh
```

**Windows**, in PowerShell:

```powershell
irm https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.ps1 | iex
```

To install a given version, pass it to the script:

```sh
curl -fsSL https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.sh | sh -s -- v0.0.2
```

```powershell
& ([scriptblock]::Create((irm https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.ps1))) -Version v0.0.2
```

To read the script before running it, download it first, then run it:

```sh
curl -fsSLO https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.sh
sh install.sh            # the latest release
sh install.sh v0.0.2     # a given version
```

```powershell
irm https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.ps1 -OutFile install.ps1
powershell -ExecutionPolicy Bypass -File .\install.ps1                    # the latest release
powershell -ExecutionPolicy Bypass -File .\install.ps1 -Version v0.0.2    # a given version
```

| System  | What the script installs                                                                                                                       |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| macOS   | the application, into `/Applications`, or `~/Applications` when that is not writable                                                           |
| Linux   | the `.deb` or the `.rpm`, whichever your system uses, otherwise the `.AppImage` in `~/.local/bin`; `-t deb`, `-t rpm` or `-t appimage` chooses |
| Windows | the setup, for your user, without administrator rights; `-Installer msi` installs the `.msi` for the whole machine                             |

### By hand

**macOS.**
Open the `.dmg` and drag Permguard Admin into Applications.

**Windows.**
Run the setup `.exe`, or the `.msi` for managed installations.

**Linux.**
Install the `.deb` with `sudo apt install ./permguard-admin_*.deb`, or the `.rpm` with `sudo dnf install ./permguard-admin_*.rpm`.
The `.AppImage` runs without installing: make it executable with `chmod +x` and start it.

If your system asks for confirmation the first time you open the application, confirm that you want to open it.

## Before you start

Permguard Admin works with the Permguard command line, which it uses to talk to your servers.
Installed with Homebrew, it is already there; otherwise install it first:

```sh
brew trust permguard/tap      # once, if not done already
brew install permguard/tap/permguard-cli
```

Other ways to install it are in the [Permguard documentation](https://docs.permguard.com/).
Then start Permguard Admin, choose a folder for your workspace, and connect it to a Permguard server: on your own computer, it finds the local one by itself.

<p align="center">
  <img src="assets/screens/home.png" alt="The welcome page: open a workspace, with your recent workspaces listed below." width="820">
</p>

## Help

- **Documentation:** [docs.permguard.com](https://docs.permguard.com/)
- **Questions and problems:** [open an issue](https://github.com/permguard/permguard-admin-releases/issues)
- **Permguard itself:** [github.com/permguard/permguard](https://github.com/permguard/permguard)

## License

Permguard Admin is free to download and use under the terms in [LICENSE](LICENSE).
The open source components it includes, and their licences, are listed in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
Permguard® is a registered trademark of Nitro Agility S.r.l.
