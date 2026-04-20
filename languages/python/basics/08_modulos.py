"""
Objetivo: usar módulos da biblioteca padrão.
Como executar: python .\languages\python\basics\08_modulos.py
Conceitos treinados: import, math, random.
Próximo exercício: 09_arquivos.py
"""

import math
import random

angulo = 30
print(f"Raiz de 81: {math.sqrt(81)}")
print(f"Seno de {angulo} graus: {math.sin(math.radians(angulo)):.4f}")
print(f"Número aleatório entre 1 e 10: {random.randint(1, 10)}")
