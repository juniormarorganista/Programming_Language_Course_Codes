! Objetivo: usar funções e subrotinas.
! Como executar:
!   powershell -ExecutionPolicy Bypass -File .\scriptsuild-fortran-module.ps1 -Source .\languagesortranasics_subrotinas_funcoes.f90
! Conceitos treinados: contains, function, subroutine.
! Próximo exercício: 05_arrays.f90

program subrotinas_funcoes
    implicit none
    real :: nota

    nota = media3(7.0, 8.0, 9.0)
    print *, "Media =", nota
    call mostrar_status(nota)

contains

    real function media3(a, b, c)
        implicit none
        real, intent(in) :: a, b, c
        media3 = (a + b + c) / 3.0
    end function media3

    subroutine mostrar_status(valor)
        implicit none
        real, intent(in) :: valor
        if (valor >= 7.0) then
            print *, "Aprovado"
        else
            print *, "Reprovado"
        end if
    end subroutine mostrar_status

end program subrotinas_funcoes
