"""
Objetivo: tratar erros de forma controlada.
Como executar: python .\languages\python\basics\10_excecoes.py
Conceitos treinados: try, except, else, finally.
Próximo exercício: exercises/guided/01_jogo_adivinhacao.py
"""

def dividir(a: float, b: float) -> float:
    return a / b

casos = [(10, 2), (5, 0)]
for a, b in casos:
    try:
        resultado = dividir(a, b)
    except ZeroDivisionError:
        print(f"Não foi possível dividir {a} por {b}: divisão por zero.")
    else:
        print(f"Resultado de {a} / {b} = {resultado}")
    finally:
        print("Caso finalizado.\n")
