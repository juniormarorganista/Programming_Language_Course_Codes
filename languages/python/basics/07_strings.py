"""
Objetivo: praticar operações comuns com strings.
Como executar: python .\languages\python\basics\07_strings.py
Conceitos treinados: strip, lower, split, replace, f-string.
Próximo exercício: 08_modulos.py
"""

frase = "  Python e SQL andam bem juntos.  "
texto = frase.strip()

print(f"Original: {frase!r}")
print(f"Tratada: {texto!r}")
print(f"Minúsculas: {texto.lower()}")
print(f"Palavras: {texto.split()}")
print(f"Troca: {texto.replace('bem', 'muito bem')}")
