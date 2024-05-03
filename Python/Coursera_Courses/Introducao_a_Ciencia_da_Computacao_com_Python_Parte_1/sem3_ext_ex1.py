import math
def main():

    x1 = float(input("Digite a primeira coordenada de x = "))
    y1 = float(input("Digite a segunda coordenada de x = "))
    x2 = float(input("Digite a primeira coordenada de y = "))
    y2 = float(input("Digite a segunda coordenada de y = "))
    # Delta
    distancia = math.sqrt((x1-x2)**2 + (y1-y2)**2)

    if (distancia >= 10):
        print("longe")
    else:
        print("perto")

main()
