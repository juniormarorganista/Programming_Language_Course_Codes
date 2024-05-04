def permutations(lst):
    if not lst:
        return [[]]
    res = []
    for e in lst:
        temp = lst[:]
        temp.remove(e)
        res.extend([[e] + r for r in permutations(temp)])

    return res

def maior_subarray(mat):
   n   = len(mat)
   per = mat[:]
   for j in range(0,n):
      per[j] = j
   matper = permutations(per)
   for lisper in matper:
      lista = True
      for j in lisper:
         if (j+1 < j):
            lista = False
            break
      if (lista):
         print(lisper)


mat = [-10,2,6,4,8,-9,-11,26,-20]
maior_subarray(mat)
