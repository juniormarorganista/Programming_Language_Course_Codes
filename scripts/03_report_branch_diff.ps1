param(
    [Parameter(Mandatory = $true)]
    [string]$BranchName
)

$ErrorActionPreference = "Stop"

Write-Host "== Commits da branch em relação à main ==" -ForegroundColor Cyan
git log --oneline origin/main..origin/$BranchName

Write-Host ""
Write-Host "== Resumo do diff ==" -ForegroundColor Cyan
git diff --stat origin/main..origin/$BranchName
