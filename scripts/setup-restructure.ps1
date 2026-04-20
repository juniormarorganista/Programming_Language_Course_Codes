$ErrorActionPreference = "Stop"

Write-Host "==> Criando snapshot de seguranca" -ForegroundColor Cyan

git branch archive/raw-2026-04-19 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Branch archive/raw-2026-04-19 ja existe. Seguindo." -ForegroundColor Yellow
}

git tag raw-snapshot-2026-04-19 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Tag raw-snapshot-2026-04-19 ja existe. Seguindo." -ForegroundColor Yellow
}

Write-Host "==> Criando estrutura base" -ForegroundColor Cyan
$dirs = @(
    "docs",
    "languages",
    "languages/python",
    "languages/python/scientific",
    "languages/python/projects",
    "languages/c",
    "languages/c/basics",
    "languages/c/exercises",
    "languages/c/projects",
    "languages/cpp",
    "languages/cpp/basics",
    "languages/cpp/exercises",
    "languages/cpp/projects",
    "languages/fortran",
    "languages/fortran/basics",
    "languages/fortran/statistics",
    "languages/fortran/numerical_methods",
    "languages/matlab_octave",
    "languages/matlab_octave/basics",
    "languages/matlab_octave/scientific_projects",
    "languages/mathematica",
    "languages/mathematica/basics",
    "languages/mathematica/research",
    "languages/r",
    "languages/r/basics",
    "languages/r/statistics",
    "languages/r/projects",
    "languages/sql",
    "languages/sql/basics",
    "languages/sql/intermediate",
    "languages/sql/mini_projects",
    "languages/php",
    "languages/php/basics",
    "languages/php/functions",
    "languages/php/arrays",
    "languages/php/forms",
    "languages/php/oop",
    "languages/php/mini_projects",
    "languages/java",
    "languages/java/basics",
    "languages/java/oop",
    "languages/java/collections",
    "languages/java/exceptions",
    "languages/java/files",
    "languages/java/mini_projects",
    "languages/frontend",
    "languages/frontend/html_css",
    "languages/frontend/javascript",
    "languages/frontend/typescript",
    "languages/frontend/react",
    "shared",
    "shared/templates",
    "shared/examples",
    "shared/examples/powerbi",
    "tests",
    "scripts"
)

foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Force -Path $dir | Out-Null
}

function GitMoveIfExists {
    param(
        [string]$Source,
        [string]$Destination
    )

    if (Test-Path $Source) {
        Write-Host "Movendo $Source -> $Destination" -ForegroundColor Green
        git mv "$Source" "$Destination"
    }
    else {
        Write-Host "Nao encontrado: $Source" -ForegroundColor Yellow
    }
}

Write-Host "==> Movendo material legado com historico" -ForegroundColor Cyan
GitMoveIfExists "Python\Coursera" "languages\python\exercises"
GitMoveIfExists "Python\Apps" "languages\python\apps"
GitMoveIfExists "C\Calculator" "languages\c\projects\calculator"
GitMoveIfExists "C\Kit_Correcao" "languages\c\projects\kit_correcao"
GitMoveIfExists "CPP\Calculator" "languages\cpp\projects\calculator"
GitMoveIfExists "Fortran\Statistic\calcular_media.f90" "languages\fortran\statistics\calcular_media.f90"
GitMoveIfExists "Matlab_Octave\Numerical_Calculation" "languages\matlab_octave\numerical_methods"
GitMoveIfExists "Matlab_Octave\LST_PTT" "languages\matlab_octave\scientific_projects\lst_ptt"
GitMoveIfExists "Mathematica\LPTT" "languages\mathematica\research\lptt"
GitMoveIfExists "Mathematica\MMS" "languages\mathematica\research\mms"
GitMoveIfExists "R\comandos.r" "languages\r\basics\comandos.r"
GitMoveIfExists "SQL\Initial_codes.sql" "languages\sql\basics\01_initial_codes.sql"
GitMoveIfExists "PowerBi\apresentacao.pbix" "shared\examples\powerbi\apresentacao.pbix"
GitMoveIfExists "assets" "docs"

if (-not (Test-Path "docs\assets")) {
    New-Item -ItemType Directory -Force -Path "docs\assets" | Out-Null
}

Write-Host "==> Removendo binario Fortran versionado, se existir" -ForegroundColor Cyan
if (Test-Path "Fortran\Statistic\calcular_media") {
    git rm --cached "Fortran\Statistic\calcular_media" 2>$null
    Remove-Item -Force "Fortran\Statistic\calcular_media"
}

Write-Host "==> Reorganizacao inicial concluida" -ForegroundColor Cyan
Write-Host "Rode agora: git status" -ForegroundColor White
