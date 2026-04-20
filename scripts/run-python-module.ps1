param(
    [Parameter(Mandatory = $true)]
    [string]$File
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $File)) {
    throw "Arquivo não encontrado: $File"
}

python $File
