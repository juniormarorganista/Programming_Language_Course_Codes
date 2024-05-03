def imprime_matriz(mat):
    lin = len(mat)
    con = len(mat[0])
    for i in range(lin):
       for j in range(con):
          if (j == con-1):
             if (i == lin-1):
                print(mat[i][j],end="")
             else :
                print(mat[i][j],end="\n")
          else :
             print(mat[i][j],end=" ")

          if (i == lin-1 and j == con-1):
             print(end="")
