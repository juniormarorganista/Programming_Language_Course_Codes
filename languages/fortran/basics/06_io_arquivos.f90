! Objetivo: criar e ler um arquivo texto simples.
! Como executar:
!   powershell -ExecutionPolicy Bypass -File .\scriptsuild-fortran-module.ps1 -Source .\languagesortranasics_io_arquivos.f90
! Conceitos treinados: open, write, read, close.
! Próximo exercício: projects/01_grade_report.f90

program io_arquivos
    implicit none
    integer :: unit_out, unit_in, ios
    character(len=100) :: linha

    unit_out = 10
    open(unit=unit_out, file="fortran_saida.txt", status="replace", action="write")
    write(unit_out, '(A)') "Linha 1"
    write(unit_out, '(A)') "Linha 2"
    close(unit_out)

    unit_in = 11
    open(unit=unit_in, file="fortran_saida.txt", status="old", action="read")
    do
        read(unit_in, '(A)', iostat=ios) linha
        if (ios /= 0) exit
        print *, trim(linha)
    end do
    close(unit_in)
end program io_arquivos
