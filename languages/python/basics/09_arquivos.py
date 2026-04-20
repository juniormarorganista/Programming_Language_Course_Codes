"""
Objetivo: ler e escrever arquivos de texto.
Como executar: python .\languages\python\basics\09_arquivos.py
Conceitos treinados: open, leitura, escrita, pathlib.
Próximo exercício: 10_excecoes.py
"""

from pathlib import Path

arquivo = Path("exemplo_saida.txt")
arquivo.write_text("Linha 1\nLinha 2\n", encoding="utf-8")
conteudo = arquivo.read_text(encoding="utf-8")

print("Conteúdo do arquivo:")
print(conteudo)
