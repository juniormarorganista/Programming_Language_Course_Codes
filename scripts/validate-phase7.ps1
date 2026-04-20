$ErrorActionPreference = 'Stop'

$required = @(
    'docs/REVISAO_TRANSVERSAL_COMPLETA.md',
    'docs/PADRONIZACAO_DE_CABECALHOS.md',
    'docs/FASE7_APLICACAO.md',
    'scripts/generate-header-audit.py',
    'scripts/apply-legacy-headers.py',
    'scripts/rebuild-readme-index.py',
    'scripts/run-phase7-review.ps1',
    'tests/header_tools_smoke.py',
    '.github/ISSUE_TEMPLATE/legacy-cleanup.md',
    'shared/templates/legacy_header_placeholder.txt'
)

foreach ($item in $required) {
    if (-not (Test-Path $item)) {
        throw "Arquivo obrigatório ausente: $item"
    }
}

Write-Host 'Fase 7 validada: arquivos principais encontrados.' -ForegroundColor Green
