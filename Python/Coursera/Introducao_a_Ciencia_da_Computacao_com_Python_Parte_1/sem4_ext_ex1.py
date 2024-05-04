import math
def main():
    n = int(input("Digite um número inteiro: "))
    n = abs(n)
    num_max  = int(0.5*n)
    if (n == 2 or n == 3):
        print("primo")
        return
    elif (n % 2 == 0 or n==1):
        print("não primo")
        return
    is_prime = True
    i = 3
    #print("aqui")
    while (is_prime):
        if (i>=num_max):
            print("primo")
            return
        ver = n % i == 0
        i   += 1
        if (ver):
            is_prime = False
            print("não primo")
            return

main()
