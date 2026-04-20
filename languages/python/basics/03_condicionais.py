"""
Objetivo: praticar estruturas condicionais.
Como executar: python .\languages\python\basics\03_condicionais.py
Conceitos treinados: if, elif, else, comparação.
Próximo exercício: 04_lacos.py
"""

def classificar_nota(nota: float) -> str:
    if nota >= 9:
        return "excelente"
    if nota >= 7:
        return "boa"
    if nota >= 5:
        return "regular"
    return "insuficiente"

for nota in [9.5, 7.2, 5.8, 3.9]:
    print(f"Nota {nota}: desempenho {classificar_nota(nota)}")
