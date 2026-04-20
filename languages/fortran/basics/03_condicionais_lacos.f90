! Objetivo: praticar if e do.
! Como executar:
!   powershell -ExecutionPolicy Bypass -File .\scriptsuild-fortran-module.ps1 -Source .\languagesortranasics_condicionais_lacos.f90
! Conceitos treinados: if, else, do.
! Próximo exercício: 04_subrotinas_funcoes.f90

program condicionais_lacos
    implicit none
    integer :: i, numero

    numero = 7

    if (mod(numero, 2) == 0) then
        print *, numero, "eh par"
    else
        print *, numero, "eh impar"
    end if

    do i = 1, 5
        print *, "i =", i
    end do
end program condicionais_lacos
