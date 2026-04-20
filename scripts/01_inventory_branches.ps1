param(
    [switch]$ShowRemoteOnly
)

$ErrorActionPreference = "Stop"

Write-Host "== Inventário de branches ==" -ForegroundColor Cyan
git fetch --all --prune | Out-Null

if ($ShowRemoteOnly) {
    git branch -r
} else {
    git branch -a
}

Write-Host ""
Write-Host "== Branches com merge em main (locais) ==" -ForegroundColor Yellow
git branch --merged main

Write-Host ""
Write-Host "== Branches sem merge em main (locais) ==" -ForegroundColor Yellow
git branch --no-merged main
