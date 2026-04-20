param(
    [Parameter(Mandatory = $true)]
    [string]$Source
)

$compiler = Get-Command gcc -ErrorAction SilentlyContinue
if (-not $compiler) {
    Write-Host "gcc não encontrado no PATH." -ForegroundColor Yellow
    Write-Host "Instale um compilador GCC compatível com Windows e tente novamente." -ForegroundColor Yellow
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

& gcc $sourcePath -Wall -Wextra -std=c11 -o $exePath
if ($LASTEXITCODE -ne 0) {
    Write-Host "Falha na compilação C." -ForegroundColor Red
    exit $LASTEXITCODE
}

Write-Host "Executável gerado em: $exePath" -ForegroundColor Green
& $exePath
