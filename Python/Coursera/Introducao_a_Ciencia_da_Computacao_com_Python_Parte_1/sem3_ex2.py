#import math
def main():

    numero = int(input("Digite um número = "))
    # Delta
    div3 = numero % 3 == 0

    if (div3):
        print("Fizz")
    else:
        print(numero)

main()
