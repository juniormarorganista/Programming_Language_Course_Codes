#import math
def main():

    numero = int(input("Digite um número = "))
    # Delta
    div5 = numero % 5 == 0

    if (div5):
        print("Buzz")
    else:
        print(numero)

main()
