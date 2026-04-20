"""
Objetivo: ler um CSV e gerar um resumo simples.
Como executar: python .\languages\python\scientific\02_csv_analysis.py
Conceitos treinados: csv.DictReader, pathlib, agregação.
Próximo exercício: usar seus próprios dados e gerar um commit com análise nova.
"""

from pathlib import Path
import csv

arquivo = Path("amostra_notas.csv")
if not arquivo.exists():
    arquivo.write_text(
        "aluno,nota\nAna,8.5\nBruno,7.0\nCarla,9.2\nDiego,6.8\n",
        encoding="utf-8",
    )

notas: list[float] = []
with arquivo.open("r", encoding="utf-8", newline="") as f:
    leitor = csv.DictReader(f)
    for linha in leitor:
        notas.append(float(linha["nota"]))

print(f"Arquivo: {arquivo}")
print(f"Quantidade de notas: {len(notas)}")
print(f"Média: {sum(notas) / len(notas):.2f}")
print(f"Maior nota: {max(notas):.2f}")
print(f"Menor nota: {min(notas):.2f}")
