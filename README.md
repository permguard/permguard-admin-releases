<!--
Copyright (c) 2022 Nitro Agility S.r.l.
SPDX-License-Identifier: LicenseRef-Permguard-Admin-Binary
-->

# Permguard Admin

<p align="center">
  <img src="assets/hero.png" alt="Permguard Admin. The Control Plane, administered. The desktop administration tool for Permguard. For macOS, Linux and Windows, free download." width="820">
</p>

<p align="center">
  <a href="https://github.com/permguard/permguard-admin-releases/releases/latest"><b>Download</b></a> ·
  <a href="https://permguard.com"><b>Website</b></a> ·
  <a href="https://docs.permguard.com/"><b>Documentation</b></a> ·
  <a href="https://github.com/permguard/permguard"><b>Permguard</b></a>
</p>

**The desktop administration tool for the Permguard Control Plane.**

Permguard Admin is for the people who administer [Permguard](https://github.com/permguard/permguard).
Connect it to your Control Planes and manage them from one window: the server that hosts them, the ledgers and policies they serve, the decisions they record.
No terminal, no curl, no guessing.

<p align="center">
  <img src="assets/screens/observe.png" alt="The Observe page: the server of the current control plane, active, with its transport, TLS, version and round trip, and a map of the Host, the Control Plane and the Data Plane." width="820">
</p>

## What you can do

<p align="center">
  <img src="assets/sections.png" alt="Four sections. Explorer, observe: the Host and its planes, each document as a table, the decision logs. Ledgers, sync: clone, pull when the head moves, read files and commits. PDP, ask: compose a request and the data plane answers. Settings, connect: control planes, TLS, token files, theme and language." width="820">
</p>

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

Write a request, pick the ledger and the profile, and ask your data plane directly.
The answer comes back next to it, with the policies that decided it, how long it took, and the command line to ask the same thing again from a script.

<p align="center">
  <img src="assets/screens/evaluation.png" alt="The Policy evaluation page: a request for User alice to read Document budget-2026, and the answer of the data plane: permit, by document-readers and gateway-access, in 41 ms." width="820">
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
Install it first:

```sh
brew install permguard/tap/cli
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
Permguard® is a registered trademark of Nitro Agility S.r.l.
