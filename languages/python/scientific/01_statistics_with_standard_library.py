"""
Objetivo: usar a biblioteca padrão para estatística descritiva simples.
Como executar: python .\languages\python\scientific\01_statistics_with_standard_library.py
Conceitos treinados: statistics.mean, median, pstdev.
Próximo exercício: 02_csv_analysis.py
"""

from statistics import mean, median, pstdev

valores = [10.0, 12.5, 11.8, 13.2, 12.1, 11.4]

print(f"Dados: {valores}")
print(f"Média: {mean(valores):.3f}")
print(f"Mediana: {median(valores):.3f}")
print(f"Desvio-padrão populacional: {pstdev(valores):.3f}")
