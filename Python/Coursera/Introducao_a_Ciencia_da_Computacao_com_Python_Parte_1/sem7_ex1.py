def retangulo_completo():
    largura = int(input("digite a largura: "))
    altura  = int(input("digite a altura: "))
    l = 0
    h = 0
    while h < altura:
        while l < largura:
            print("#",end="")
            l += 1
        print()
        h += 1
        l  =0


retangulo_completo()
