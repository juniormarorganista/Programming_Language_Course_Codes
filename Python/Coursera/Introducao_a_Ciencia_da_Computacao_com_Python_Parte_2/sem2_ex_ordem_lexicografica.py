# Funcao verifica ordem lexcografica
def primeiro_lex(lista):
   n = len(lista)
   prilex = lista[0]
   prilex = prilex.strip()
   for i in range(1,n):
      aux = lista[i][:]
      aux = aux.strip()
      if (prilex > aux):
         prilex = aux
   return prilex
