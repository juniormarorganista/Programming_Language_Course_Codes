#import math
def main():

    numero1 = int(input("Digite o primeiro número = "))
    numero2 = int(input("Digite o segundo número = "))
    numero3 = int(input("Digite o terceiro número = "))
    # Delta
    che12 = numero1 < numero2
    che23 = numero2 < numero3

    if (che12 and che23):
        print("crescente")
    else:
        print("não está em ordem crescente")

main()
