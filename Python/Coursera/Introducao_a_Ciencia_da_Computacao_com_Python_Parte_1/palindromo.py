def palindromo(item):
   letra = 0
   if type(item) == int:
      item = str(item)
   while letra < len(item):
      if item[letra] != item[len(item) - letra - 1]:
         return False
      letra += 1 
   return True

