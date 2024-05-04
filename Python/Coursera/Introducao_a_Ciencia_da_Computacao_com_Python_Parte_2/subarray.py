def soma_vec(vec):
   soma = 0;
   for j in range(0,len(vec)):
      soma += vec[j]

   return soma
       
def maior_subarray(vec):
   n = len(vec)
   for j in range(0,n):
       print(soma_vec(vec[j:]))
   
vec = [-10,2,3,5,-8,9,-15]
maior_subarray(vec)