def create_matrix(nl,nc,val):
    # nl  = numero de linha
    # nc = numero de coluna
    matrix = [] # matriz vazia
    for i in range(nl):
       lin = []; # cria a linha vazia da matriz
       for j in range(nc):
          lin.append(val) # preenche a linha
       matrix.append(lin) # insere a linha na matrix
    return matrix

def read_matrix():
    # nl  = numero de linha
    # nc = numero de coluna
    nl  = int(input("Digite o numero de linhas da matriz: "))
    nc = int(input("Digite o numero de colunas da matriz: "))
    matrix = [] # matriz vazia
    for i in range(nl):
       lin = [] # cria a linha vazia da matriz
       for j in range(nc):
          val = float(input("Digite o elemento [" + str(i) + "][" + str(j) + "]: "))
          lin.append(val) # preenche a linha
       matrix.append(lin) # insere a linha na matrix
    return matrix

def print_matrix(matrix):
    # nc = numero de coluna
    # nl = numero de linha
    for i in range(nl):
       lin = []; # cria a linha vazia da matriz
       for j in range(nc):
          lin.append(val) # preenche a linha
          matrix.append(lin) # insere a linha na matrix
    return matrix

def tarefa(mat):
    dim = len(mat)
    for i in range(dim):
        print(mat[i][dim-1-i], end="  ")

mat = [[1,2,3],[4,5,6],[7,8,9]]
tarefa(mat)

