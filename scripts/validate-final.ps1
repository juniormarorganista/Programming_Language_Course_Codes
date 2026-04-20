$ErrorActionPreference = "Stop"

Write-Host "==> Validando estrutura principal"
python .\tests\repo_structure_check.py

if (Test-Path .\scripts\check-structure.ps1) {
    Write-Host "==> Rodando check-structure.ps1"
    powershell -ExecutionPolicy Bypass -File .\scripts\check-structure.ps1
}

$phaseValidators = @(
    ".\scripts\validate-phase2.ps1",
    ".\scripts\validate-phase3.ps1",
    ".\scripts\validate-phase4.ps1",
    ".\scripts\validate-phase5.ps1",
    ".\scripts\validate-phase6.ps1",
    ".\scripts\validate-phase7.ps1"
)

foreach ($validator in $phaseValidators) {
    if (Test-Path $validator) {
        Write-Host "==> Rodando $validator"
        powershell -ExecutionPolicy Bypass -File $validator
    }
}

Write-Host "==> Rodando smoke test dos cabeçalhos legados"
python .\tests\header_tools_smoke.py

Write-Host "Validação final concluída com sucesso."
