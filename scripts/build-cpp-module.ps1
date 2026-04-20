param(
    [Parameter(Mandatory = $true)]
    [string]$Source
)

$compiler = Get-Command g++ -ErrorAction SilentlyContinue
if (-not $compiler) {
    Write-Host "g++ não encontrado no PATH." -ForegroundColor Yellow
    Write-Host "Instale um compilador C++ compatível com Windows e tente novamente." -ForegroundColor Yellow
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

& g++ $sourcePath -Wall -Wextra -std=c++17 -o $exePath
if ($LASTEXITCODE -ne 0) {
    Write-Host "Falha na compilação C++." -ForegroundColor Red
    exit $LASTEXITCODE
}

Write-Host "Executável gerado em: $exePath" -ForegroundColor Green
& $exePath
