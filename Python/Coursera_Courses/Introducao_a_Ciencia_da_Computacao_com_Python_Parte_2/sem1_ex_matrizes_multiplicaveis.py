def sao_multiplicaveis(mat1,mat2):
    lin1 = len(mat1)
    lin2 = len(mat2)
    con1 = len(mat1[0])
    con2 = len(mat2[0])
    if  (con1 == lin2 and lin1*con1*lin2*con2 != 0 ):
        return True
    else :
        return False

