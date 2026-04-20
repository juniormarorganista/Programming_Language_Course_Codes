$ErrorActionPreference = "Stop"

$required = @(
    "README.md",
    ".gitignore",
    "docs\COMO_USAR.md",
    "docs\ROADMAP.md",
    "docs\CONVENCOES.md",
    "docs\ACHIEVEMENTS_GITHUB.md",
    "languages\python\README.md",
    "languages\c\README.md",
    "languages\cpp\README.md",
    "languages\fortran\README.md",
    "languages\matlab_octave\README.md",
    "languages\mathematica\README.md",
    "languages\r\README.md",
    "languages\sql\README.md",
    "languages\php\README.md",
    "languages\java\README.md",
    "languages\frontend\README.md",
    "scripts\setup-restructure.ps1"
)

$missing = @()
foreach ($item in $required) {
    if (-not (Test-Path $item)) {
        $missing += $item
    }
}

if ($missing.Count -eq 0) {
    Write-Host "Estrutura base OK." -ForegroundColor Green
} else {
    Write-Host "Faltando arquivos:" -ForegroundColor Red
    $missing | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
    exit 1
}
