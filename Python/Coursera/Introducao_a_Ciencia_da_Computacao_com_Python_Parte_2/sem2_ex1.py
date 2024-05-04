def maiusculas(frase):
   frase = frase.split()
   n = len(frase)
   masc = '' 
   for i in range(n):
       m = len(frase[i])
       for j in range(m):
          tabasc = ord(frase[i][j])
          if tabasc in range(65,91): # valores da tabela ASCII para letras maiusculas
             masc += str(frase[i][j])
   return masc
