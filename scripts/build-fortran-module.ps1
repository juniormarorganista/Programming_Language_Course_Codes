param(
    [Parameter(Mandatory = $true)]
    [string]$Source
)

$compiler = Get-Command gfortran -ErrorAction SilentlyContinue
if (-not $compiler) {
    Write-Host "gfortran não encontrado no PATH." -ForegroundColor Yellow
    Write-Host "Instale um compilador Fortran compatível com Windows e tente novamente." -ForegroundColor Yellow
    exit 1
}

if (-not (Test-Path $Source)) {
    Write-Host "Arquivo não encontrado: $Source" -ForegroundColor Red
    exit 1
}

$sourcePath = Resolve-Path $Source
$sourceDir = Split-Path $sourcePath -Parent
$exeName = [System.IO.Path]::GetFileNameWithoutExtension($sourcePath)
$exePath = Join-Path $sourceDir ($exeName + '.exe')

& gfortran $sourcePath -Wall -Wextra -std=f2008 -o $exePath
if ($LASTEXITCODE -ne 0) {
    Write-Host "Falha na compilação Fortran." -ForegroundColor Red
    exit $LASTEXITCODE
}

Write-Host "Executável gerado em: $exePath" -ForegroundColor Green
& $exePath
