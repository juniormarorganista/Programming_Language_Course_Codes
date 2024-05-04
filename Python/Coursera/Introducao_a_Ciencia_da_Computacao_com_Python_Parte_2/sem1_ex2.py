def cria_matriz(nl,nc,value):
  mat = []
  for i in range(nl):
      lin = []
      for j in range(nc):
          lin.append(value)
      mat.append(lin)
  return mat

def soma_matrizes(mat1,mat2):
    lin1 = len(mat1)
    lin2 = len(mat2)
    con1 = len(mat1[0])
    con2 = len(mat2[0])
    if  (lin1 == lin2 and con1 == con2):
        sommat = cria_matriz(lin1,con1,0)
        for i in range(lin1):
            for j in range(con1):
                sommat[i][j] = mat1[i][j] + mat2[i][j]
        return sommat
    else :
        return False

