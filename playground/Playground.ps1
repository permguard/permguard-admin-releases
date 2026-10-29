# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0

[CmdletBinding()]
param(
    [Parameter(Position = 0)]
    [ValidateSet(
        "pull", "up", "bootstrap", "demo", "check", "decisions", "events",
        "logs", "down", "reset", "destroy", "uninstall"
    )]
    [string]$Action = "demo"
)

$ErrorActionPreference = "Stop"
$ComposeFile = Join-Path $PSScriptRoot "compose.yml"
$ComposePrefix = @("compose", "-f", $ComposeFile, "--project-directory", $PSScriptRoot)
$Registry = if ($env:PERMGUARD_REGISTRY) {
    $env:PERMGUARD_REGISTRY
} else {
    "permguard"
}
$Version = if ($env:PERMGUARD_VERSION) {
    $env:PERMGUARD_VERSION
} else {
    "latest"
}
$CliImage = "${Registry}/cli:${Version}"

function Invoke-Compose {
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]]$Arguments
    )

    & docker @ComposePrefix @Arguments
    if ($LASTEXITCODE -ne 0) {
        throw "docker compose failed with exit code $LASTEXITCODE"
    }
}

function Update-PlaygroundImages {
    Invoke-Compose pull permguard
    Invoke-Compose build --pull toolbox
}

function Start-Playground {
    Update-PlaygroundImages
    Invoke-Compose up -d permguard
    Invoke-Compose run --rm toolbox wait
}

function Publish-Playground {
    Start-Playground
    Invoke-Compose run --rm toolbox bootstrap
}

function Remove-Playground {
    Invoke-Compose --profile tools down --volumes --remove-orphans --rmi all

    & docker image inspect $CliImage *> $null
    if ($LASTEXITCODE -eq 0) {
        & docker image rm $CliImage
        if ($LASTEXITCODE -ne 0) {
            Write-Warning "The CLI image is still in use and Docker kept it: $CliImage"
        }
    }
}

if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
    throw "Docker Desktop or Docker Engine is required."
}

switch ($Action) {
    "pull" {
        Update-PlaygroundImages
    }
    "up" {
        Start-Playground
    }
    "bootstrap" {
        Publish-Playground
    }
    "demo" {
        Publish-Playground
        Invoke-Compose run --rm toolbox demo
    }
    "check" {
        Start-Playground
        Invoke-Compose run --rm toolbox check
    }
    "decisions" {
        Start-Playground
        Invoke-Compose run --rm toolbox decisions
    }
    "events" {
        Start-Playground
        Invoke-Compose run --rm toolbox events
    }
    "logs" {
        Invoke-Compose logs -f permguard
    }
    "down" {
        Invoke-Compose down --remove-orphans
    }
    "reset" {
        $answer = Read-Host "Delete the playground catalog, decisions, events, and keys? Type YES"
        if ($answer -ne "YES") {
            Write-Host "Reset cancelled."
            exit 0
        }
        Invoke-Compose down --volumes --remove-orphans
    }
    { $_ -in @("destroy", "uninstall") } {
        $answer = Read-Host "Delete every playground container, network, volume, and selected Permguard image? Type YES"
        if ($answer -ne "YES") {
            Write-Host "Destroy cancelled."
            exit 0
        }
        Remove-Playground
    }
}
