$ErrorActionPreference = "Stop"

$required = @(
    "README.md",
    ".gitignore",
    "docs\COMO_USAR.md",
    "docs\ROADMAP.md",
    "docs\CONVENCOES.md",
    "docs\ACHIEVEMENTS_GITHUB.md",
    "languages\php\README.md",
    "languages\java\README.md",
    "languages\frontend\README.md",
    "languages\php\basics\01_hello.php",
    "languages\java\basics\01_HelloWorld.java",
    "languages\frontend\html_css\01_pagina_inicial.html",
    "languages\frontend\javascript\01_dom_basico.html",
    "languages\frontend\typescript\01_tipos_basicos.ts",
    "languages\frontend\react\01_react_cdn.html",
    ".github\PULL_REQUEST_TEMPLATE.md"
)

$missing = @()

foreach ($item in $required) {
    if (-not (Test-Path $item)) {
        $missing += $item
    }
}

if ($missing.Count -eq 0) {
    Write-Host "Validação concluída. Fase 2 está consistente."
} else {
    Write-Host "Arquivos ausentes:"
    $missing | ForEach-Object { Write-Host " - $_" }
    exit 1
}
