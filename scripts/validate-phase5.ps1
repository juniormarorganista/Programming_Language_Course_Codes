$ErrorActionPreference = "Stop"

Write-Host "Validando estrutura da fase 5..."

$requiredPaths = @(
    "docs\TRILHA_MATLAB_R_MATHEMATICA.md",
    "docs\REVISAO_TRANSVERSAL.md",
    "languages\matlab_octave\README.md",
    "languages\matlab_octave\basics\01_hello.m",
    "languages\matlab_octave\numerical_methods\01_bisection_method.m",
    "languages\r\README.md",
    "languages\r\basics\01_hello.R",
    "languages\r\statistics\01_summary_statistics.R",
    "languages\mathematica\README.md",
    "languages\mathematica\basics\01_hello.wls",
    "languages\mathematica\calculus\01_limits_derivatives_integrals.wls"
)

$missing = @()

foreach ($path in $requiredPaths) {
    if (-not (Test-Path $path)) {
        $missing += $path
    }
}

if ($missing.Count -gt 0) {
    Write-Host "Arquivos faltando:"
    $missing | ForEach-Object { Write-Host " - $_" }
    exit 1
}

Write-Host "Estrutura da fase 5 validada com sucesso."
