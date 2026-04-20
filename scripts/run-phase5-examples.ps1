$ErrorActionPreference = "Stop"

function Test-Command {
    param([string]$Name)
    return [bool](Get-Command $Name -ErrorAction SilentlyContinue)
}

Write-Host "Executando exemplos da fase 5..."

if (Test-Command "octave") {
    Write-Host "Executando exemplos de MATLAB/Octave..."
    octave --quiet --eval "run('.\languages\matlab_octave\basics\01_hello.m')"
    octave --quiet --eval "run('.\languages\matlab_octave\numerical_methods\01_bisection_method.m')"
    octave --quiet --eval "run('.\languages\matlab_octave\statistics\01_basic_statistics.m')"
} else {
    Write-Host "octave não encontrado no PATH. Pulando testes de MATLAB/Octave."
}

if (Test-Command "Rscript") {
    Write-Host "Executando exemplos de R..."
    Rscript .\languages\r\basics\01_hello.R
    Rscript .\languages\r\data\01_vectors_and_factors.R
    Rscript .\languages\r\statistics\01_summary_statistics.R
} else {
    Write-Host "Rscript não encontrado no PATH. Pulando testes de R."
}

if (Test-Command "wolframscript") {
    Write-Host "Executando exemplos de Mathematica..."
    wolframscript -file .\languages\mathematica\basics\01_hello.wls
    wolframscript -file .\languages\mathematica\algebra\01_symbolic_examples.wls
    wolframscript -file .\languages\mathematica\calculus\01_limits_derivatives_integrals.wls
} else {
    Write-Host "wolframscript não encontrado no PATH. Pulando testes de Mathematica."
}

Write-Host "Fase 5 concluída."
