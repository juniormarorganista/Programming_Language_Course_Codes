import re

def le_assinatura():
    '''A funcao le os valores dos tracos linguisticos do modelo e devolve uma assinatura a ser comparada com os textos fornecidos'''
    print("Bem-vindo ao detector automático de COH-PIAH.")
    print("Informe a assinatura típica de um aluno infectado:")

    wal = float(input("Entre o tamanho médio de palavra:"))
    ttr = float(input("Entre a relação Type-Token:"))
    hlr = float(input("Entre a Razão Hapax Legomana:"))
    sal = float(input("Entre o tamanho médio de sentença:"))
    sac = float(input("Entre a complexidade média da sentença:"))
    pal = float(input("Entre o tamanho medio de frase:"))

    return [wal, ttr, hlr, sal, sac, pal]

def le_textos():
    '''A funcao le todos os textos a serem comparados e devolve uma lista contendo cada texto como um elemento'''
    i = 1
    textos = []
    texto = input("Digite o texto " + str(i) +" (aperte enter para sair):")
    while texto:
        textos.append(texto)
        i += 1
        texto = input("Digite o texto " + str(i) +" (aperte enter para sair):")

    return textos

def separa_sentencas(texto):
    '''A funcao recebe um texto e devolve uma lista das sentencas dentro do texto'''
    sentencas = re.split(r'[.!?]+', texto)
    if sentencas[-1] == '':
        del sentencas[-1]
    return sentencas

def separa_frases(sentenca):
    '''A funcao recebe uma sentenca e devolve uma lista das frases dentro da sentenca'''
    return re.split(r'[,:;]+', sentenca)

def separa_palavras(frase):
    '''A funcao recebe uma frase e devolve uma lista das palavras dentro da frase'''
    return frase.split()

def n_palavras_unicas(lista_palavras):
    '''Essa funcao recebe uma lista de palavras e devolve o numero de palavras que aparecem uma unica vez'''
    freq = dict()
    unicas = 0
    for palavra in lista_palavras:
        p = palavra.lower()
        if p in freq:
            if freq[p] == 1:
                unicas -= 1
            freq[p] += 1
        else:
            freq[p] = 1
            unicas += 1

    return unicas

def n_palavras_diferentes(lista_palavras):
    '''Essa funcao recebe uma lista de palavras e devolve o numero de palavras diferentes utilizadas'''
    freq = dict()
    for palavra in lista_palavras:
        p = palavra.lower()
        if p in freq:
            freq[p] += 1
        else:
            freq[p] = 1

    return len(freq)

def compara_assinatura(as_a, as_b):
    '''Essa funcao recebe duas assinaturas de texto e deve devolver o grau de similaridade nas assinaturas.'''
    Sab = 0
    for i in range(len(as_a)):
       Sab += abs(as_a[i] - as_b[i])
    return Sab/6

def calcula_assinatura(texto):
    '''Essa funcao recebe um texto e deve devolver a assinatura do texto.'''
    sentencas  = separa_sentencas(texto)

    palavras   = []
    numtotsen  = 0
    totcarsen  = 0
    numtotfra  = 0
    totcarfra  = 0
    numtotpal  = 0
    tamtotpal  = 0
    for sentenca in sentencas:
       totcarsen += len(sentenca)
       numtotsen += 1
       frases    = separa_frases(sentenca)
       for frase in frases:
          totcarfra += len(frase)
          numtotfra += 1
          aux = separa_palavras(frase)
          for le in aux:
             tamtotpal += len(le)
             numtotpal += 1
             palavras.append(le)

    numpaluni = n_palavras_unicas(palavras)
    numpaldif = n_palavras_diferentes(palavras)
    # Calculando a assinatura do ''texto''
    wal = tamtotpal/numtotpal

    ttr = numpaldif/numtotpal

    hlr = numpaluni/numtotpal

    sal = totcarsen/numtotsen

    sac = numtotfra/numtotsen

    pal = totcarfra/numtotfra

    return [wal, ttr, hlr, sal, sac, pal]

def avalia_textos(textos, ass_cp):
    '''IMPLEMENTAR. Essa funcao recebe uma lista de textos e uma assinatura ass_cp e deve devolver o numero (1 a n) do texto com maior probabilidade de ter sido infectado por COH-PIAH.'''
    pacidentificado = 0
    con_exame = 0
    exame_comp = 100000
    for texto in textos:
       con_exame += 1
       as_pac = calcula_assinatura(texto)
       exame  = compara_assinatura(as_pac, ass_cp)
       if (exame < exame_comp):
          exame_comp = exame
          pacidentificado = con_exame

    return pacidentificado

def main():
   # Assinatura de um portador de COH-PIAH
   ass_cp = le_assinatura()
   # Pacientes para fazer o exame
   textos = le_textos()
   # Lista de pacientes que estao com o virus COH-PIAH
   pacidentificado = avalia_textos(textos, ass_cp)
   print("O autor do texto",pacidentificado,"está infectado com COH-PIAH")

main()

