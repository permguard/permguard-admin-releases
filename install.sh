#!/bin/sh
# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0
#
# Installs Permguard Admin on macOS or Linux, from the releases of this repository.
#
#   curl -fsSL https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.sh | sh
#   curl -fsSL https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.sh | sh -s -- v0.0.2
#
# Usage: install.sh [-t deb|rpm|appimage] [-d dir] [-y] [version]
#   version   a release, v0.0.2 or 0.0.2; the latest published release when omitted
#   -t        Linux only: the package format, chosen from the system when omitted
#   -d        macOS: the Applications folder; Linux AppImage: the bin folder
#   -y        do not ask before using sudo
set -eu

OWNER="permguard"
REPO="permguard-admin-releases"
PROJECT="permguard-admin"
BASE="https://github.com/${OWNER}/${REPO}/releases"

log() { printf '[permguard-admin] %s\n' "$*"; }
usage() { printf 'usage: install.sh [-t deb|rpm|appimage] [-d dir] [-y] [version]\n'; }
die() { log "error: $*" >&2; exit 1; }
have() { command -v "$1" >/dev/null 2>&1; }

FORMAT=""
DIR=""
ASSUME_YES=0
while getopts "t:d:yh" opt; do
  case "${opt}" in
    t) FORMAT="${OPTARG}" ;;
    d) DIR="${OPTARG}" ;;
    y) ASSUME_YES=1 ;;
    h | *) usage; exit 2 ;;
  esac
done
shift $((OPTIND - 1))
REQUESTED="${1:-}"

have curl || die "curl is required"

# ----- the version: given, or the latest published release ------------------------------------
# The latest is read from the redirect of /releases/latest, not the API: no rate limit applies.
if [ -n "${REQUESTED}" ]; then
  TAG="v${REQUESTED#v}"
else
  location="$(curl -fsSI "${BASE}/latest" | tr -d '\r' | sed -n 's/^[Ll]ocation: //p' | tail -n 1)"
  TAG="${location##*/}"
  case "${TAG}" in
    v[0-9]*) ;;
    *) die "no published release found at ${BASE}" ;;
  esac
fi
VERSION="${TAG#v}"
DOWNLOAD="${BASE}/download/${TAG}"
log "Permguard Admin ${VERSION}"

# ----- the platform ----------------------------------------------------------------------------
os="$(uname -s)"
case "$(uname -m)" in
  x86_64 | amd64) arch=amd64 ;;
  aarch64 | arm64) arch=arm64 ;;
  *) die "unsupported architecture $(uname -m)" ;;
esac

tmp="$(mktemp -d)"
trap 'rm -rf "${tmp}"' EXIT INT TERM

# Downloads an asset of the release and checks it against checksums.txt before it is used.
fetch() {
  asset="$1"
  [ -f "${tmp}/checksums.txt" ] || curl -fsSL -o "${tmp}/checksums.txt" "${DOWNLOAD}/checksums.txt" \
    || die "${TAG} has no checksums.txt: is it a published release?"
  log "downloading ${asset}"
  curl -fSL --progress-bar -o "${tmp}/${asset}" "${DOWNLOAD}/${asset}" || die "cannot download ${asset}"
  expected="$(awk -v name="${asset}" '$2 == name { print $1 }' "${tmp}/checksums.txt")"
  [ -n "${expected}" ] || die "${asset} is not in checksums.txt"
  if have sha256sum; then
    actual="$(sha256sum "${tmp}/${asset}" | awk '{ print $1 }')"
  else
    actual="$(shasum -a 256 "${tmp}/${asset}" | awk '{ print $1 }')"
  fi
  [ "${actual}" = "${expected}" ] || die "checksum mismatch for ${asset}"
  log "checksum verified"
}

# Runs a command as root, asking first unless -y.
as_root() {
  if [ "$(id -u)" = 0 ]; then
    "$@"
  else
    have sudo || die "root rights are needed: run as root or install sudo"
    [ "${ASSUME_YES}" = 1 ] || log "sudo is needed to install the package"
    sudo "$@"
  fi
}

case "${os}" in
  Darwin)
    asset="${PROJECT}_${VERSION}_darwin_universal.app.zip"
    fetch "${asset}"
    if [ -z "${DIR}" ]; then
      DIR="/Applications"
      [ -w "${DIR}" ] || DIR="${HOME}/Applications"
    fi
    mkdir -p "${DIR}"
    ditto -x -k "${tmp}/${asset}" "${tmp}/app"
    app="$(find "${tmp}/app" -maxdepth 1 -name '*.app' | head -n 1)"
    [ -n "${app}" ] || die "${asset} holds no application"
    target="${DIR}/$(basename "${app}")"
    rm -rf "${target}"
    ditto "${app}" "${target}"
    log "installed ${target}"
    ;;
  Linux)
    if [ -z "${FORMAT}" ]; then
      if have dpkg; then FORMAT=deb
      elif have dnf || have yum || have zypper; then FORMAT=rpm
      else FORMAT=appimage
      fi
    fi
    case "${FORMAT}" in
      deb)
        asset="${PROJECT}_${VERSION}_linux_${arch}.deb"
        fetch "${asset}"
        if have apt-get; then as_root apt-get install -y "${tmp}/${asset}"; else as_root dpkg -i "${tmp}/${asset}"; fi
        ;;
      rpm)
        asset="${PROJECT}_${VERSION}_linux_${arch}.rpm"
        fetch "${asset}"
        if have dnf; then as_root dnf install -y "${tmp}/${asset}"
        elif have yum; then as_root yum install -y "${tmp}/${asset}"
        else as_root zypper --non-interactive install --allow-unsigned-rpm "${tmp}/${asset}"
        fi
        ;;
      appimage)
        asset="${PROJECT}_${VERSION}_linux_${arch}.AppImage"
        fetch "${asset}"
        [ -n "${DIR}" ] || DIR="${HOME}/.local/bin"
        mkdir -p "${DIR}"
        install -m 0755 "${tmp}/${asset}" "${DIR}/${PROJECT}"
        log "installed ${DIR}/${PROJECT}"
        case ":${PATH}:" in *":${DIR}:"*) ;; *) log "add ${DIR} to your PATH to run ${PROJECT}" ;; esac
        ;;
      *) die "unknown format ${FORMAT}: deb, rpm or appimage" ;;
    esac
    log "installed Permguard Admin ${VERSION} (${FORMAT})"
    ;;
  *)
    die "unsupported system ${os}: on Windows use install.ps1"
    ;;
esac
