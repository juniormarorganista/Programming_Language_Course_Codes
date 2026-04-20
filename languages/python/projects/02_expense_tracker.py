"""
Objetivo: criar um controle simples de despesas em memória.
Como executar: python .\languages\python\projects\02_expense_tracker.py
Conceitos treinados: listas de dicionários, somatórios, filtro por categoria.
Próximo exercício: scientific/01_statistics_with_standard_library.py
"""


def adicionar_despesa(despesas: list[dict[str, object]]) -> None:
    descricao = input("Descrição: ").strip()
    categoria = input("Categoria: ").strip()
    valor = float(input("Valor: ").strip())
    despesas.append({"descricao": descricao, "categoria": categoria, "valor": valor})


def listar_resumo(despesas: list[dict[str, object]]) -> None:
    if not despesas:
        print("Nenhuma despesa cadastrada.")
        return
    total = sum(float(item["valor"]) for item in despesas)
    print("\nResumo de despesas")
    for item in despesas:
        print(f"- {item['descricao']} | {item['categoria']} | R$ {float(item['valor']):.2f}")
    print(f"Total: R$ {total:.2f}")


def main() -> None:
    despesas: list[dict[str, object]] = []
    while True:
        print("\n1 - adicionar | 2 - resumo | 0 - sair")
        opcao = input("Escolha: ").strip()
        if opcao == "1":
            adicionar_despesa(despesas)
        elif opcao == "2":
            listar_resumo(despesas)
        elif opcao == "0":
            break
        else:
            print("Opção inválida.")

if __name__ == "__main__":
    main()
