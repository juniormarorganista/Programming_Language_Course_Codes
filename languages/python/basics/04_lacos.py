"""
Objetivo: praticar laços com for e while.
Como executar: python .\languages\python\basics\04_lacos.py
Conceitos treinados: iteração, range, while, acumuladores.
Próximo exercício: 05_funcoes.py
"""

soma = 0
for numero in range(1, 6):
    soma += numero
print(f"Soma de 1 até 5: {soma}")

contador = 3
while contador > 0:
    print(f"Contagem regressiva: {contador}")
    contador -= 1
print("Fim.")
