import math
def main():

    a = float(input("a = "))
    b = float(input("b = "))
    c = float(input("c = "))
    # Delta
    delta = b**2 - 4*a*c

    if (a == 0):
        print("Para ser uma equação de segundo grau é necessário que a seja não nulo!!!")
        print("Como cortesia, a solução para a equação linear bx + c = 0 é dada por: x1 =",-c/b)
        return 0

    x1R = -b/(2*a)
    x1I = math.sqrt(abs(delta))/(2*a)
    if (delta < 0):
        print("As raizes da equação são complexas e dadas por: x_1 =",x1R,"+",x1I,"i","e x_2 =",x1R,"-",x1I,"i!")
    elif (delta == 0):
        print("As raizes da equação tem multiplicidade 2 e são dadas por: x_1 = x_2 =",x1R,"!")
    else:
        x1 = x1R + x1I
        x2 = x1R - x1I
        print("As raizes da equação são distintas e dadas por: x_1 =",x1,"e x_2 =",x2,"!")


main()
