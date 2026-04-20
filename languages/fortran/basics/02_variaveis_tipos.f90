! Objetivo: revisar tipos numéricos e lógicos.
! Como executar:
!   powershell -ExecutionPolicy Bypass -File .\scriptsuild-fortran-module.ps1 -Source .\languagesortranasics_variaveis_tipos.f90
! Conceitos treinados: integer, real, logical, character.
! Próximo exercício: 03_condicionais_lacos.f90

program variaveis_tipos
    implicit none
    integer :: idade
    real :: nota
    logical :: aprovado
    character(len=20) :: nome

    idade = 31
    nota = 8.75
    aprovado = .true.
    nome = "Juniormar"

    print *, "Nome:", trim(nome)
    print *, "Idade:", idade
    print *, "Nota:", nota
    print *, "Aprovado:", aprovado
end program variaveis_tipos
