#import math
def main():
    n = int(input("Digite o valor de n:"))
    factorial = 1

    if (n == 0):
        print(factorial)
    else:
        cont = 1;
        while (cont < n):
            factorial *= cont
            cont +=1
        print(factorial)

main()
