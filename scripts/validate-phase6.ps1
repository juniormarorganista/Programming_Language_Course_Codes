$ErrorActionPreference = "Stop"

$requiredPaths = @(
    ".\README.md",
    ".\docs\NAVEGACAO_GERAL.md",
    ".\docs\ROADMAP_MENSAL_12_SEMANAS.md",
    ".\docs\GUIA_DE_ESTUDO_SEMANAL.md",
    ".\docs\GUIA_DE_PULL_REQUESTS.md",
    ".\docs\CHECKLIST_FINAL_REPOSITORIO.md",
    ".\.github\PULL_REQUEST_TEMPLATE.md",
    ".\.github\workflows\ci-smoke.yml",
    ".\languages\java\README.md",
    ".\languages\php\README.md",
    ".\languages\frontend\README.md",
    ".\tests\repo_structure_check.py"
)

$missing = @()
foreach ($path in $requiredPaths) {
    if (-not (Test-Path $path)) {
        $missing += $path
    }
}

if ($missing.Count -gt 0) {
    Write-Host "Arquivos ausentes:" -ForegroundColor Red
    $missing | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
    exit 1
}

Write-Host "Validação da fase 6 concluída com sucesso." -ForegroundColor Green
