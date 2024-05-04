#import math
def main():
    n = int(input("Digite o valor de n: "))
    cont   = 0;
    numero = 0;
    while (cont < n):
        numero += 1
        ndiv2 = numero % 2 == 1
        if ndiv2:
            cont += 1
            print(numero)

main()
