def imprime_matriz(mat):
    lin = len(mat)
    con = len(mat[0])
    dim = lin * con
    for i in range(lin):
       for j in range(con):
          print(mat[i][j], end="")
    return 0

def calculo(x, y = 10, z = 5):
    return x + y * z;

def horario_em_segundos(h, m, s):
    assert h >= 0 and m >= 0 and s >= 0
    return h * 3600 + m * 60 + s

def fazAlgo_1(string):
    pos = len(string)-1
    string = string.upper()
    while pos >= 0:
        print(string[pos],end = "")
        pos = pos - 1

def fazAlgo_2(string):
    pos = 0
    string1 = ""
    string = string.lower()
    stringMa = string.upper()
    while pos < len(string):
        if pos % 2 == 0:
            string1 = string1 + stringMa[pos]
        else:
            string1 = string1 + string[pos]
        pos = pos + 1
    return string1    

def fazAlgo_3(string):
    pos = 0
    string1 = ""
    while pos < len(string):
        if string[pos] != " ":
            string1 = string1 + string[pos]
        pos = pos + 1
    string1 = string1.capitalize()
    return string1

def fazAlgo(string):
    pos = len(string)-1
    stringMi = string.lower()
    string = string.upper()
    stringRe = ""
    while pos >= 0:
        if string[pos] == 'A' or string[pos] == 'E' or string[pos] == 'I' or string[pos] == 'O' or string[pos] == 'U':
            stringRe = stringRe + string[pos]
        else:
            stringRe = stringRe + stringMi[pos]
        pos = pos - 1
    return stringRe

if __name__ == "__main__":
    print(fazAlgo("teste"))
    print(fazAlgo("o ovo do avestruz"))
    print(fazAlgo("A CASA MUITO ENGRAÇADA"))
    print(fazAlgo("A TELEvisão queBROU"))
    print(fazAlgo("A Vaca Amarela"))
 
