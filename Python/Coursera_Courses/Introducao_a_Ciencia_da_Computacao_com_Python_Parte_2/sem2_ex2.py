# Funcao calcula o menor nome de uma lista de nomes
def menor_nome(nomes):
   n   = len(nomes)
   aux = nomes[0][:]
   aux = aux.strip()
   aux = aux.lower()
   mm  = len(aux)
   menornome = aux
   for i in range(n):
      aux = nomes[i][:]
      aux = aux.strip()
      aux = aux.lower()
      m=len(aux)
      if (m < mm) :
         menornome = aux
   menornome = menornome.capitalize()
   return menornome
