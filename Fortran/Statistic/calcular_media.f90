program calcular_media
    implicit none
    
    integer :: n, i
    real :: soma, media
    real, allocatable :: numeros(:)
    
    ! Solicita ao usuário o número de elementos
    print *, "Digite o número de elementos:"
    read *, n
    
    ! Aloca memória para o array de números
    allocate(numeros(n))
    
    ! Solicita ao usuário os números
    print *, "Digite os números:"
    do i = 1, n
        read *, numeros(i)
    end do
    
    ! Calcula a soma dos números
    soma = 0.0
    do i = 1, n
        soma = soma + numeros(i)
    end do
    
    ! Calcula a média
    media = soma / real(n)
    
    ! Exibe o resultado
    print *, "A média dos números é:", media
    
    ! Libera a memória alocada
    deallocate(numeros)
    
end program calcular_media

