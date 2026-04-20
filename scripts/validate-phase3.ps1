$ErrorActionPreference = "Stop"

$required = @(
    "languages/python/basics/01_hello.py",
    "languages/python/basics/10_excecoes.py",
    "languages/python/exercises/guided/01_jogo_adivinhacao.py",
    "languages/python/projects/01_cli_gradebook.py",
    "languages/python/scientific/02_csv_analysis.py",
    "languages/sql/basics/01_schema.sql",
    "languages/sql/joins/01_join_examples.sql",
    "languages/sql/aggregation/01_group_by.sql",
    "languages/sql/subqueries/01_subqueries.sql",
    "languages/sql/views/01_views.sql",
    "scripts/run_sqlite_module.py",
    "docs/TRILHA_PYTHON_SQL.md"
)

$missing = @()
foreach ($item in $required) {
    if (-not (Test-Path $item)) {
        $missing += $item
    }
}

if ($missing.Count -gt 0) {
    Write-Host "Arquivos faltando:" -ForegroundColor Red
    $missing | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
    exit 1
}

Write-Host "Validação da fase 3 concluída com sucesso." -ForegroundColor Green
