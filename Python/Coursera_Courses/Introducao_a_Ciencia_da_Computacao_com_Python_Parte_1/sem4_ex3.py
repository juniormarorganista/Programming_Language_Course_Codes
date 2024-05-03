#import math
def main():
    n = int(input("Digite o valor de n: "))
    cont   = True;
    valor  = 0;
    while (cont):
        ultdig = n % 10
        valor  += ultdig
        n      = n // 10
        if (n == 0):
            cont = False
            print(valor)

main()
