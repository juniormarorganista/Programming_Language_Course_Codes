def remove_repetidos(lista):
    lista = sorted(lista)
    i = 0
    n = len(lista)
    while (i < n):
        for j in range(i+1,n):
            if (lista[i] == lista[j]):
                del lista[j]
                i -= 1
                break
        i += 1
        n = len(lista)
    return lista
