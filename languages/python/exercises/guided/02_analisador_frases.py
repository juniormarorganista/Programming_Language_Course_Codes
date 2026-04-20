"""
Objetivo: analisar uma frase digitada pelo usuário.
Como executar: python .\languages\python\exercises\guided\02_analisador_frases.py
Conceitos treinados: strings, contagem, conjuntos, funções.
Próximo exercício: 03_agenda_simples.py
"""

VOGAIS = set("aeiouáéíóúãõâêôà")

def analisar(frase: str) -> dict[str, int]:
    letras = [c.lower() for c in frase if c.isalpha()]
    vogais = sum(1 for c in letras if c in VOGAIS)
    consoantes = sum(1 for c in letras if c not in VOGAIS)
    return {
        "caracteres": len(frase),
        "letras": len(letras),
        "vogais": vogais,
        "consoantes": consoantes,
        "palavras": len(frase.split()),
    }

if __name__ == "__main__":
    frase = input("Digite uma frase: ")
    resultado = analisar(frase)
    for chave, valor in resultado.items():
        print(f"{chave}: {valor}")
