def invert_lista():
    n = 1
    lista = []
    while (n != 0):
        n = int(input("Digite um número: "))
        if (n != 0):
            lista.append(n)
    
    for i in range(len(lista)-1,-1,-1):
        print(lista[i])

invert_lista()