$required = @(
    '.\docs\TRILHA_C_CPP_FORTRAN.md',
    '.\languages\c\README.md',
    '.\languages\c\basics\01_hello.c',
    '.\languages\c\projects\01_student_stats.c',
    '.\languages\cpp\README.md',
    '.\languages\cpp\basics\01_hello.cpp',
    '.\languages\cpp\projects\01_inventory_cli.cpp',
    '.\languages\fortran\README.md',
    '.\languages\fortran\basics\01_hello.f90',
    '.\languages\fortran\projects\01_grade_report.f90',
    '.\scripts\build-c-module.ps1',
    '.\scripts\build-cpp-module.ps1',
    '.\scripts\build-fortran-module.ps1'
)

$missing = @()
foreach ($item in $required) {
    if (-not (Test-Path $item)) {
        $missing += $item
    }
}

if ($missing.Count -gt 0) {
    Write-Host "Arquivos ausentes:" -ForegroundColor Red
    $missing | ForEach-Object { Write-Host $_ -ForegroundColor Red }
    exit 1
}

Write-Host "Validação da fase 4 concluída com sucesso." -ForegroundColor Green
