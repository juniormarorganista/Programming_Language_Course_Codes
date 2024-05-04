def n_primos(n):
    while (n < 2):
        n = int(input("Digite um número inteiro maior ou igual a 2: "))
    cont  = 0
    aux_n = 2
    while (aux_n <= n):
        if (is_prime(aux_n)):
            cont += 1
        aux_n += 1
    return cont

def is_prime(x):
    fator = 2
    if (x == 2 or x == 3):
        return True
    else:
        while ((x % fator != 0) and (fator <= x/2)):
            fator += 1
        if (x % fator == 0):
            return False
        else:
            return True

