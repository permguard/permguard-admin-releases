# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0
#
# Installs Permguard Admin on Windows, from the releases of this repository.
#
#   irm https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.ps1 | iex
#   & ([scriptblock]::Create((irm https://raw.githubusercontent.com/permguard/permguard-admin-releases/main/install.ps1))) -Version v0.0.2
#
# -Version     a release, v0.0.2 or 0.0.2; the latest published release when omitted
# -Installer   nsis (default): per user, no administrator rights; msi: for the machine, as administrator

[CmdletBinding()]
param(
    [string]$Version = "",
    [ValidateSet("nsis", "msi")]
    [string]$Installer = "nsis"
)

$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"

$Owner = "permguard"
$Repo = "permguard-admin-releases"
$Project = "permguard-admin"
$Base = "https://github.com/$Owner/$Repo/releases"

function Log([string]$Message) { Write-Host "[permguard-admin] $Message" }
function Fail([string]$Message) { throw "[permguard-admin] error: $Message" }

# Windows PowerShell 5.1 may still default to TLS 1.0.
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12

if (-not [Environment]::Is64BitOperatingSystem) { Fail "Permguard Admin needs 64-bit Windows" }
$arch = $env:PROCESSOR_ARCHITECTURE
if ($arch -ne "AMD64") { Log "the installer is built for amd64; on $arch Windows runs it under emulation" }

# ----- the version: given, or the latest published release ------------------------------------
# The latest is read from the redirect of /releases/latest, not the API: no rate limit applies.
if ($Version) {
    $Tag = "v" + $Version.TrimStart("v")
} else {
    $request = [Net.WebRequest]::Create("$Base/latest")
    $request.AllowAutoRedirect = $false
    $response = $request.GetResponse()
    $location = $response.Headers["Location"]
    $response.Close()
    $Tag = ($location -split "/")[-1]
    if ($Tag -notmatch '^v\d') { Fail "no published release found at $Base" }
}
$Number = $Tag.TrimStart("v")
$Download = "$Base/download/$Tag"
Log "Permguard Admin $Number"

$asset = if ($Installer -eq "msi") { "${Project}_${Number}_windows_amd64.msi" } else { "${Project}_${Number}_windows_amd64_setup.exe" }
$temp = Join-Path ([IO.Path]::GetTempPath()) ("permguard-admin-" + [Guid]::NewGuid())
New-Item -ItemType Directory -Path $temp | Out-Null
try {
    # The release's checksums first: nothing is installed that does not match them.
    $checksums = Join-Path $temp "checksums.txt"
    try { Invoke-WebRequest -UseBasicParsing -Uri "$Download/checksums.txt" -OutFile $checksums }
    catch { Fail "$Tag has no checksums.txt: is it a published release?" }
    $line = Get-Content $checksums | Where-Object { ($_ -split '\s+')[1] -eq $asset } | Select-Object -First 1
    if (-not $line) { Fail "$asset is not in checksums.txt" }
    $expected = ($line -split '\s+')[0].ToLowerInvariant()

    Log "downloading $asset"
    $file = Join-Path $temp $asset
    try { Invoke-WebRequest -UseBasicParsing -Uri "$Download/$asset" -OutFile $file }
    catch { Fail "cannot download $asset" }
    $actual = (Get-FileHash -Algorithm SHA256 -Path $file).Hash.ToLowerInvariant()
    if ($actual -ne $expected) { Fail "checksum mismatch for $asset" }
    Log "checksum verified"

    if ($Installer -eq "msi") {
        $process = Start-Process -FilePath "msiexec.exe" -ArgumentList @("/i", "`"$file`"", "/qn", "/norestart") -Verb RunAs -Wait -PassThru
    } else {
        $process = Start-Process -FilePath $file -ArgumentList "/S" -Wait -PassThru
    }
    if ($process.ExitCode -ne 0) { Fail "the installer exited with $($process.ExitCode)" }
    Log "installed Permguard Admin $Number ($Installer)"
} finally {
    Remove-Item -Recurse -Force $temp -ErrorAction SilentlyContinue
}
