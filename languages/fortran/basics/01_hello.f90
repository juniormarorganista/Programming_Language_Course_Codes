! Objetivo: compilar e executar o primeiro programa em Fortran.
! Como executar:
!   powershell -ExecutionPolicy Bypass -File .\scriptsuild-fortran-module.ps1 -Source .\languagesortranasics_hello.f90
! Conceitos treinados: program, implicit none, print.
! Próximo exercício: 02_variaveis_tipos.f90

program hello_fortran
    implicit none
    print *, "Ola, Fortran moderno no VS Code!"
end program hello_fortran
