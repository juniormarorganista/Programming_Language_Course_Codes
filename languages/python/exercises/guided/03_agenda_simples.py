"""
Objetivo: criar uma agenda simples em memória.
Como executar: python .\languages\python\exercises\guided\03_agenda_simples.py
Conceitos treinados: listas, dicionários, funções, menu.
Próximo exercício: projects/01_cli_gradebook.py
"""

def listar(contatos: list[dict[str, str]]) -> None:
    if not contatos:
        print("Agenda vazia.")
        return
    for indice, contato in enumerate(contatos, start=1):
        print(f"{indice}. {contato['nome']} - {contato['telefone']}")


def adicionar(contatos: list[dict[str, str]]) -> None:
    nome = input("Nome: ").strip()
    telefone = input("Telefone: ").strip()
    contatos.append({"nome": nome, "telefone": telefone})
    print("Contato adicionado.")


def menu() -> None:
    contatos: list[dict[str, str]] = []
    while True:
        print("\n1 - adicionar | 2 - listar | 0 - sair")
        opcao = input("Escolha: ").strip()
        if opcao == "1":
            adicionar(contatos)
        elif opcao == "2":
            listar(contatos)
        elif opcao == "0":
            print("Saindo.")
            break
        else:
            print("Opção inválida.")

if __name__ == "__main__":
    menu()
