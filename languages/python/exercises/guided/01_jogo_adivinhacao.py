"""
Objetivo: treinar entrada, laços e condicionais com um jogo simples.
Como executar: python .\languages\python\exercises\guided\01_jogo_adivinhacao.py
Conceitos treinados: input, while, comparação, validação.
Próximo exercício: 02_analisador_frases.py
"""

import random

def jogar() -> None:
    secreto = random.randint(1, 20)
    tentativas = 5

    print("Adivinhe o número entre 1 e 20.")
    while tentativas > 0:
        palpite = input(f"Tentativas restantes {tentativas}. Seu palpite: ").strip()
        if not palpite.isdigit():
            print("Digite um número inteiro válido.")
            continue

        numero = int(palpite)
        if numero == secreto:
            print("Acertou.")
            return
        if numero < secreto:
            print("O número secreto é maior.")
        else:
            print("O número secreto é menor.")
        tentativas -= 1

    print(f"Fim de jogo. O número era {secreto}.")

if __name__ == "__main__":
    jogar()
