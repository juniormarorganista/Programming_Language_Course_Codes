"""
Objetivo: criar e reutilizar funções.
Como executar: python .\languages\python\basics\05_funcoes.py
Conceitos treinados: def, parâmetros, retorno, docstring.
Próximo exercício: 06_colecoes.py
"""

def media(valores: list[float]) -> float:
    """Calcula a média aritmética simples."""
    return sum(valores) / len(valores)

notas = [8.0, 7.5, 9.0]
print(f"Notas: {notas}")
print(f"Média: {media(notas):.2f}")
