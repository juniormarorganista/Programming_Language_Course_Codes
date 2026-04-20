"""
Objetivo: registrar notas e calcular indicadores simples.
Como executar: python .\languages\python\projects\01_cli_gradebook.py
Conceitos treinados: funções, listas, estatísticas simples, interação por terminal.
Próximo exercício: 02_expense_tracker.py
"""

from statistics import mean


def ler_notas() -> list[float]:
    notas: list[float] = []
    print("Digite notas entre 0 e 10. Enter vazio encerra.")
    while True:
        entrada = input("Nota: ").strip()
        if not entrada:
            break
        try:
            nota = float(entrada)
        except ValueError:
            print("Valor inválido.")
            continue
        if 0 <= nota <= 10:
            notas.append(nota)
        else:
            print("A nota deve estar entre 0 e 10.")
    return notas


def resumir(notas: list[float]) -> None:
    if not notas:
        print("Nenhuma nota foi informada.")
        return
    print(f"Quantidade: {len(notas)}")
    print(f"Média: {mean(notas):.2f}")
    print(f"Maior nota: {max(notas):.2f}")
    print(f"Menor nota: {min(notas):.2f}")


if __name__ == "__main__":
    resumir(ler_notas())
