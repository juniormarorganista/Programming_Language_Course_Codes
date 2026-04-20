! Objetivo: trabalhar com arrays e medias.
! Como executar:
!   powershell -ExecutionPolicy Bypass -File .\scriptsuild-fortran-module.ps1 -Source .\languagesortranasics_arrays.f90
! Conceitos treinados: arrays, size, sum.
! Próximo exercício: 06_io_arquivos.f90

program arrays_fortran
    implicit none
    real, dimension(5) :: notas
    real :: media

    notas = (/ 8.5, 7.0, 9.0, 6.5, 8.0 /)
    media = sum(notas) / real(size(notas))

    print *, "Notas:"
    print *, notas
    print *, "Media:", media
end program arrays_fortran
