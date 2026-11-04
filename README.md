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
  <img src="assets/diagrams/deployment.png" alt="The deployment of a Permguard server, drawn by Permguard Admin from what the server publishes: Permguard Admin reaches the Host listener over HTTP; inside the Server Host, the Control Plane mirrors policies to the Data Plane, which ships decisions and events back; the Data Plane serves Cedar, Dogwood and Rego; below, the listeners control-http-grpc, data-http-grpc, host-api and telemetry." width="820">
</p>

<p align="center"><sub>Your server, drawn live: every plane, port, listener and flow, and how policies, decisions and events move between them.</sub></p>

<p align="center">
  <img src="assets/diagrams/ledger-diagrams.png" alt="Two ledger files as diagrams. Left, the manifest of order-platform: the profiles gateway, operations and refund point to the partitions order-operations, payment-api and refund-workflow, which run on Cedar, Rego and Dogwood. Right, a Cedar schema: the actions refund and view link their principal Operator and their resource Order, beside the entities Merchant and Role." width="820">
</p>

<p align="center"><sub>Your policies, drawn: which profile asks which partition and runtime, and what each action is allowed to touch.</sub></p>

**The desktop administration tool for the Permguard Control Plane.**

> [!WARNING]
> **Preview.** Permguard Admin is a preview release, not yet stable.
> Screens and behaviour may change from one version to the next, and some features are still experimental.
> Try it on development and test environments, and tell us what you find in the [issues](https://github.com/permguard/permguard-admin-releases/issues).

Permguard Admin is for the people who administer [Permguard](https://github.com/permguard/permguard).
Connect it to your Control Planes and manage them from one window: the server that hosts them, the ledgers and policies they serve, the events and decisions they record.
No curl, no guessing: and when you want the command line, every ledger has its own, sandboxed.

<p align="center">
  <img src="assets/screens/observe.png" alt="The Observe page: the server of the current control plane, active, over HTTP with mutual TLS, with its version, its round trip, a small topology of the Host, the Control Plane and the Data Plane, and a map of the surfaces to open." width="820">
</p>

## What you can do

<p align="center">
  <img src="assets/sections.png" alt="Four sections. Explorer, observe: the Host and its planes, the live events, the decision logs. Ledgers, sync: clone with the CLI, pull when the head moves, read files and commits. Evaluations, ask and load: ask the data plane, run real suites as load, check every decision. Settings, connect: control planes, TLS, token files, theme and language." width="820">
</p>

### See your deployment at a glance

Permguard Admin draws your server as it really is: the Host, the Control Plane and the Data Plane, their ports and listeners, and how policies, decisions and events flow between them.
Click anything to read its details, double-click a plane to open it.

<p align="center">
  <img src="assets/screens/deployment.png" alt="The Deployment tab of Observe: an all-in-one server, with Permguard Admin reaching the Host listener, the Control Plane and the Data Plane exchanging policy.mirror and decisions.ship · events.ship, the four listeners below, and the facts of the selected Data Plane: its origin, state, interfaces and the languages it serves." width="820">
</p>

### Follow every event, live

Everything your data planes record, as it happens, in a stream you can read like logs.
A timeline shows the requests, responses and errors over the period you choose, from the last five minutes to the last thirty days.
Spot a spike, drag across it to zoom in, and the list below shows just those events.
Open any event to see when it happened, under which policies and commit, and its full payload.

<p align="center">
  <img src="assets/screens/events.png" alt="The Events page over the last 24 hours: 796 events, 398 requests and 398 responses on a stacked timeline of the day; below, the stream, newest first, and an event of the refund workflow open in the inspector with its type, occurrence and acceptance times, ledger, profile, partition and commit." width="820">
</p>

<details>
<summary><b>Zoom into a spike</b></summary>

<p align="center">
  <img src="assets/screens/events-zoom.png" alt="The Events page zoomed by clicking a bar of the timeline to fifteen minutes: 24 events, with Zoom out and Clear focus; the pointer over one bar shows its period and its counts by kind, and the stream lists only the events of that period." width="820">
</p>

</details>

### See every decision

Every permit and every deny your data plane records, in one list.
Search by subject, action, resource or policy, filter by time and outcome, and open any decision to see the policies and the commit behind it.

<p align="center">
  <img src="assets/screens/decision-logs.png" alt="The Decision logs page over the last 24 hours: 10,313 decisions, 7,217 permits and 3,096 denies, a p50 of 229 µs and a p95 of 566 µs, on a timeline of the day; below, the records of the control plane local, newest first, each with its time, ledger, outcome, subject, action, resource, policies and latency; the first record is open as JSON." width="820">
</p>

### Every zone and ledger, in one place

A Control Plane holds zones, and a zone holds ledgers.
See them as a table or a map, filtered by what you have cloned and what is still remote, and open any of them in one click.

<p align="center">
  <img src="assets/screens/zones.png" alt="The Zones tab of the Control plane page: the zone commerce with its four ledgers, customer-care, order-platform, payments-gateway and warehouse-fleet, one local and three remote; order-platform is selected, with its identity, server and workspace properties, and beside them the JSON the server answered for it." width="820">
</p>

### Keep your ledgers at hand

The Sync Center lists every ledger your control plane serves.
Clone the ones you care about in one click, and Permguard Admin tells you the moment a new version is published, so you pull it when you are ready.

<p align="center">
  <img src="assets/screens/sync-center.png" alt="The Sync Center of the control plane local, with its search and state filters: commerce/order-platform is cloned and up to date, with Pull and Open; commerce/customer-care, commerce/payments-gateway and commerce/warehouse-fleet are remote, each with Clone." width="820">
</p>

### Read your policies as diagrams

Open a manifest or a schema and switch it to Visual: profiles, partitions and runtimes, actions and the entities they act on, laid out as a map you can click through.

<p align="center">
  <img src="assets/screens/ledger-visual.png" alt="The manifest of the order-platform ledger opened in Visual: profiles gateway, operations and refund, partitions order-operations, payment-api and refund-workflow, runtimes Cedar, Rego and Dogwood; the refund-workflow partition is selected and its facts name its kind, its fields and the runtime it points to." width="820">
</p>

### Write your policies, and publish them

Open a ledger and edit its policies in place, in Cedar, Rego or Dogwood: every file saves itself and is validated as you go, its problems underlined where they are.
What you changed shows in the tree, added, modified or removed, and *Push* publishes it to your Control Plane with a message.

Every ledger has its own terminal, too, as your code editor has one.
It is a sandbox: the Permguard command line built into the application, working on this ledger's folder and through this Control Plane's connection, and nothing else.
`validate`, `plan`, `apply`, `history` and their companions run as you know them; a few file commands, `ls`, `cat`, `touch`, `mkdir` and `rm`, never leave the ledger's folder, and no other program on your computer is ever started.

<p align="center">
  <img src="assets/screens/terminal.png" alt="An open ledger with local changes: disputed-refund-hold.cedar added and merchant-support-readers.cedar modified, marked A and M in the tree, the folder counting +1 and ~1, the version reading latest + changes and Push enabled; below, the terminal, a sandbox on this ledger, where permguard validate and permguard plan ran: one policy to create, one to update." width="820">
</p>

### Read every change to your policies

Open a ledger to browse its policies, and its history to see who changed what, when, and why.
Every commit shows its diff, line by line, and every file has its own *History*, any two versions compared, and its *Blame*: who last wrote each line.

<p align="center">
  <img src="assets/screens/ledger-commit.png" alt="The commit refunds: four eyes from EUR 250, down from EUR 500, in the ledger order-platform: one file changed, order-operations/high-value-refund-four-eyes.cedar, shown as a unified diff that lowers the threshold from 50000 to 25000 cents." width="820">
</p>

<p align="center">
  <img src="assets/screens/ledger-history.png" alt="The History of merchant-finance-refunds.cedar: three versions, by carla.ricci, luca.bianchi and the lab, each with its message, author and short digest; the newest is open as a split diff that rewrites the opening comment." width="820">
</p>

<details>
<summary><b>Who wrote each line, and the files of a ledger</b></summary>

<p align="center">
  <img src="assets/screens/ledger-blame.png" alt="The Blame of merchant-finance-refunds.cedar: each run of lines under the commit that last wrote it, carla.ricci for the opening comment, luca.bianchi for the cap at EUR 2,000, the lab's first publication for the rest." width="820">
</p>

<p align="center">
  <img src="assets/screens/ledger-files.png" alt="The Files tab of order-platform: a tree with manifest.yml and the partitions order-operations, payment-api and refund-workflow, with their Cedar, Rego and Dogwood files and schemas; merchant-finance-refunds.cedar is open in the editor, with its History and Blame readings beside Code." width="820">
</p>

</details>

### See every object behind your policies

Open a ledger's *Objects*: every commit, tree and blob it holds, as a list or a graph, each with its digest recomputed from its bytes and the paths it is found at.
Pick one and read it three ways: decoded from its canonical CBOR, as raw bytes, or as the policy it contains.

<p align="center">
  <img src="assets/screens/objects.png" alt="The Objects tab of order-platform: 27 objects, 4 commits, 10 trees and 13 blobs, listed with their ids and paths; the blob of order-operations/merchant-finance-refunds.cedar is selected, with its digest recomputed from its bytes, its canonical CBOR encoding, its media type, the file that stores it and the tree that names it; on the right, its CBOR view." width="820">
</p>

<p align="center">
  <img src="assets/screens/objects-views.png" alt="The three views of the same blob side by side. CBOR: a map of three pairs, kind blob, media_type application/vnd.permguard.policy.cedar and data of 526 bytes, each with its offset and size. Bytes: the 574 bytes of the object in hex, with their text beside. Content: the Cedar policy merchant-finance-refunds it holds." width="820">
</p>

<p align="center">
  <img src="assets/screens/objects-graph.png" alt="The object store of order-platform as a graph: the four commits name their trees, the trees name their sub-trees and blobs; the blob of merchant-finance-refunds.cedar is selected, beside its facts and its content." width="820">
</p>

### Ask before you ship

Write a request, or import one from a JSON file, pick the ledger and the profile, and ask your data plane directly.
The answer comes back next to it, with the policies that decided it, how long it took, and the command line to ask the same thing again from a script.

<p align="center">
  <img src="assets/screens/evaluation.png" alt="The Policy Decision Point page: a request imported from the Refund desk suite, the Operator carla.finance refunding an order in commerce/order-platform under the operations profile, and the answer of the data plane, permit, by the policy that allowed it, in 3 ms." width="820">
</p>

### Load-test your policies

Then put it under load.
Open a benchmark suite, a folder of real requests with the decision each one must get, and Permguard Admin runs it against your data plane in parallel, round after round, drawing every call as it happens and telling you whether the decisions and the latencies held.
Every answer is checked against the decision and the policies it should get, so a policy change that breaks a rule shows up as an unexpected decision, not as a surprise in production.
The playground ships three suites to start from.

<p align="center">
  <img src="assets/screens/benchmarks.png" alt="The Benchmarks page after a run of the Refund desk suite against commerce/order-platform: 2,500 calls in 25 rounds with 8 in flight, 51 calls per second, latency p95 5.29 ms with p50 2.48 ms, no errors, no unexpected decisions, a 0.0% failure rate and the verdict Passed; below, the calls per second and the response time over the run." width="820">
</p>

<details>
<summary><b>Every request of the suite, with its own figures</b></summary>

<p align="center">
  <img src="assets/screens/benchmarks-mix.png" alt="The Mix tab of the same run: each of the eight requests of the suite with its profile, weight, the decision and the policy it expects, the calls made, permits, denies, errors, unexpected decisions, and its own p50 and p95, about 2.5 ms and 4.8 to 5.6 ms." width="820">
</p>

</details>

### Connect to all your Control Planes

Add your local Control Plane, staging and production side by side, over HTTP or gRPC, with TLS, mutual TLS and bearer tokens.
Switch between them from the top bar; a dot tells you at a glance which ones are online.

<p align="center">
  <img src="assets/screens/control-planes.png" alt="The Control planes page: the local all-in-one lab, running, with its ports and sample data; below, the control plane local, active, current and locked because it has a clone, over HTTP with mutual TLS." width="820">
</p>

### Bring Permguard into your code

The SDKs page shows a developer what to install and what to change: the six SDKs, Go, Java, .NET, Node.js, Python and Rust, and the same check written in the application and then asked of Permguard, side by side.

<p align="center">
  <img src="assets/screens/sdks.png" alt="The SDKs page: three steps, install the SDK, point it at a PDP, replace the check; the six languages, Go, Java, .NET, Node.js, Python and Rust; and the same check in Go twice, written in the application on the left and asked of Permguard on the right, with the command that installs the SDK." width="820">
</p>

### Make it yours

Light, dark, or the one your system uses.
English, Italiano, Español and Français.
And when a new version is out, Permguard Admin tells you, and updates itself in one click, its download checked against the release's signature.

<p align="center">
  <img src="assets/screens/themes.png" alt="The Observe page split along a diagonal: dark on the left, light on the right." width="820">
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

Nothing else is needed: the command line is inside Permguard Admin.
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

Permguard Admin needs nothing else installed: it carries the Permguard command line inside it, the same code, at the version it was built with.
Inside the application it is also the terminal of every ledger; to use the command line in your own shell, install it on its own, see the [Permguard documentation](https://docs.permguard.com/).
Start Permguard Admin, choose a folder for your workspace, and connect it to a Permguard server: on your own computer, it finds the local one by itself.

<p align="center">
  <img src="assets/screens/home.png" alt="The home page outside of a workspace: Open your workspace, with a button to open a folder and the recent workspaces acme-retail, pinned, atlas, home-hub-lab and globex-gateway." width="820">
</p>

## Help

- **Documentation:** [docs.permguard.com](https://docs.permguard.com/)
- **Questions and problems:** [open an issue](https://github.com/permguard/permguard-admin-releases/issues)
- **Permguard itself:** [github.com/permguard/permguard](https://github.com/permguard/permguard)

## License

Permguard Admin is free to download and use under the terms in [LICENSE](LICENSE).
The open source components it includes, and their licences, are listed in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
Permguard® is a registered trademark of Nitro Agility S.r.l.
