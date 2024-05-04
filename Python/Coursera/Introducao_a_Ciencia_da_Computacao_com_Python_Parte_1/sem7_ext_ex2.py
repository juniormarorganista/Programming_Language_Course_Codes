def soma_hipotenusas(n):
    while (n <= 0):
        n = int(input("Digite um número inteiro maior ou igual a 1: "))
    cont  = 0
    aux_n = 1
    while (aux_n <= n):
        if (is_hipotenusa(aux_n,n)):
            cont += aux_n
        aux_n += 1
    return cont

def is_hipotenusa(x,n):
    i = 1
    j = 1
    while (i <= n):
        while (j <= n):
            aux = x**2 - i**2 - j**2 == 0
            if (aux):
                return True
            j += 1
        i += 1
        j  = 1
    return False

print(soma_hipotenusas(25))
