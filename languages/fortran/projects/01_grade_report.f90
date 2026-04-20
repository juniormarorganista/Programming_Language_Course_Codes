! Objetivo: montar um mini projeto de relatorio de notas.
! Como executar:
!   powershell -ExecutionPolicy Bypass -File .\scriptsuild-fortran-module.ps1 -Source .\languagesortran\projects_grade_report.f90
! Conceitos treinados: arrays, funcoes internas, maxval, minval.
! Próximo exercício: adaptar para ler notas do teclado.

program grade_report
    implicit none
    real, dimension(5) :: notas

    notas = (/ 8.0, 7.5, 9.0, 6.5, 8.8 /)

    print *, "Relatorio da turma"
    print *, "Notas:", notas
    print *, "Media:", media(notas)
    print *, "Maior nota:", maxval(notas)
    print *, "Menor nota:", minval(notas)

contains

    real function media(v)
        implicit none
        real, dimension(:), intent(in) :: v
        media = sum(v) / real(size(v))
    end function media

end program grade_report
