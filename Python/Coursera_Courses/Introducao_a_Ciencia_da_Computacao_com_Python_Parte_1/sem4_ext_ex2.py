#import math
def main():
    n = int(input("Digite o valor de n: "))
    cont  = True;
    valor = 0
    while (cont):
        ultdig = n % 10
        aux    = n // 10
        pendig = aux % 10
        n      = n // 10

        if (aux == pendig and aux == 0):
            cont = False
            print("não")
        elif (ultdig == pendig):
            cont = False
            print("sim")

main()
