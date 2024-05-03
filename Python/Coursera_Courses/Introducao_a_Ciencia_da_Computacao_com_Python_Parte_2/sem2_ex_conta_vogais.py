# Funcao calcula o numero de vogais ou consoantes
def conta_letras(frase, contar="vogais"):
   frase  = frase.strip()
   frase  = frase.upper()
   contar = contar.strip()
   contar = contar.upper()
   qtd     = 0
   if (contar == 'VOGAIS' or contar == 'CONSOANTES'):
      qtd += frase.count("A")
      qtd += frase.count("E")
      qtd += frase.count("I")
      qtd += frase.count("O")
      qtd += frase.count("U")
      if (contar == 'CONSOANTES'):
         qtds  = frase.count(" ")
         total = len(frase)
         qtd   = total - qtds - qtd
   else :   
      print('Input para contar de ser "vogais" ou "consoantes"')
      return 0
   return qtd 
