def retangulo_burraco():
    largura = int(input("digite a largura: "))
    altura  = int(input("digite a altura: "))
    l = 0
    h = 0
    while h < altura:
        while l < largura:
            if ((h == 0)or(h==altura-1)):
                print("#",end="")
            elif ((l==0)or(l==largura-1)):
                print("#",end="")
            else:
                print(" ",end="")
            l += 1
        print()
        h += 1
        l  =0


retangulo_burraco()
