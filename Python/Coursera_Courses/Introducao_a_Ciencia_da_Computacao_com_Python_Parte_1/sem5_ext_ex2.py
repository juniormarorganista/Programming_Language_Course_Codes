def compara_maximo(a,b):
    if (a > b):
        return a
    else:
        return b


def maximo(a,b,c):
	aux1 = compara_maximo(a,b)
	aux2 = compara_maximo(b,c)
	return compara_maximo(aux1,aux2)
