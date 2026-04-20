$ErrorActionPreference = "Stop"

Write-Host "==> Rodando validação consolidada"
powershell -ExecutionPolicy Bypass -File .\scripts\validate-final.ps1

if (Test-Path .\scripts\run-phase6-examples.ps1) {
    Write-Host "==> Rodando exemplos da fase 6 (onde houver dependências disponíveis)"
    powershell -ExecutionPolicy Bypass -File .\scripts\run-phase6-examples.ps1
}

if (Test-Path .\scripts\run-phase7-review.ps1) {
    Write-Host "==> Rodando revisão transversal da fase 7"
    powershell -ExecutionPolicy Bypass -File .\scripts\run-phase7-review.ps1
}

Write-Host "Smoke final executado."
