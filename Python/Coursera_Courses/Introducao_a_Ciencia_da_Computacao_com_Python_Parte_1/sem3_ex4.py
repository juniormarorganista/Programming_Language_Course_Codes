#import math
def main():

    numero = int(input("Digite um número = "))
    # Delta
    div3 = numero % 3 == 0
    div5 = numero % 5 == 0

    if (div3 and div5):
        print("FizzBuzz")
    else:
        print(numero)

main()
