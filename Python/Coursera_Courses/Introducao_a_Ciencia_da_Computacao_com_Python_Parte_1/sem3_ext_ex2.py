import math
def main():

    a = float(input("a = "))
    b = float(input("b = "))
    c = float(input("c = "))
    # Delta
    delta = b**2 - 4*a*c

    x1R = -b/(2*a)
    x1I = math.sqrt(abs(delta))/(2*a)
    if (delta < 0):
        print("esta equação não possui raízes reais")
    elif (delta == 0):
        print("a raiz dupla desta equação é",x1R)
    else:
        x1 = x1R + x1I
        x2 = x1R - x1I
        orde = x1 > x2
        if (orde):
            aux = x2
            x2  = x1
            x1  = aux
        print("as raízes da equação são",x1,"e",x2)

main()
