Write-Host "Executando exemplos nativos da fase 4..." -ForegroundColor Cyan

powershell -ExecutionPolicy Bypass -File .\scripts\build-c-module.ps1 -Source .\languages\c\basics\01_hello.c
powershell -ExecutionPolicy Bypass -File .\scripts\build-cpp-module.ps1 -Source .\languages\cpp\basics\01_hello.cpp
powershell -ExecutionPolicy Bypass -File .\scripts\build-fortran-module.ps1 -Source .\languages\fortran\basics\01_hello.f90
