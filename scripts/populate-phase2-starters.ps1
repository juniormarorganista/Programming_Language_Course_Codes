param(
    [string]$RepoRoot = "."
)

$ErrorActionPreference = "Stop"

Write-Host "Criando pastas da fase 2..."
$folders = @(
    "languages\php\basics",
    "languages\php\functions",
    "languages\php\arrays",
    "languages\php\forms",
    "languages\php\oop",
    "languages\php\mini_projects",
    "languages\java\basics",
    "languages\java\oop",
    "languages\java\collections",
    "languages\java\exceptions",
    "languages\java\files",
    "languages\java\mini_projects",
    "languages\frontend\html_css",
    "languages\frontend\javascript",
    "languages\frontend\typescript",
    "languages\frontend\react",
    ".github\ISSUE_TEMPLATE"
)

foreach ($folder in $folders) {
    $fullPath = Join-Path $RepoRoot $folder
    if (-not (Test-Path $fullPath)) {
        New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
        Write-Host "Criada: $folder"
    }
}

Write-Host "Estrutura mínima da fase 2 pronta."
Write-Host "Agora copie os arquivos do pacote para a raiz do repositório."
