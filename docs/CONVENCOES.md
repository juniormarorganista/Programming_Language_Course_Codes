# Convenções do repositório

## 1. Estrutura

Cada linguagem deve ter subpastas coerentes.
Exemplo:

```text
languages/python/
├── basics/
├── exercises/
├── apps/
├── projects/
└── scientific/
```

Nem toda linguagem precisa ter todas as subpastas, mas a organização deve fazer sentido didático.

## 2. Nome de arquivos

Use nome curto, descritivo e com prefixo numérico quando houver sequência de estudo.

### Bom
- `01_hello.php`
- `02_arrays.php`
- `03_condicionais.py`
- `01_HelloWorld.java`

### Ruim
- `teste.py`
- `codigo_novo_agora_sim.py`
- `final_final2.c`

## 3. Cabeçalho obrigatório

Use este bloco no topo de novos arquivos:

```text
Objetivo:
Como executar:
Conceitos treinados:
Próximo exercício:
```

## 4. Commits

Prefira mensagens assim:
- `feat: add initial java basics module`
- `docs: improve roadmap and usage guide`
- `refactor: reorganize python exercises`
- `chore: remove compiled binaries`

## 5. Branches

Padrões sugeridos:
- `feat/python-basics`
- `feat/sql-fundamentals`
- `docs/rewrite-main-readme`
- `refactor/reorganize-matlab-files`

## 6. Pull Requests

Cada PR deve responder:
- o que foi feito;
- por que foi feito;
- como testar;
- o que ficou pendente.

## 7. Critério de qualidade mínima

Um módulo está aceitável quando tiver:
- README do módulo;
- pelo menos 3 exemplos progressivos;
- instrução clara de execução;
- próximo passo definido.

## 8. Regra de ouro

Este projeto deve ser legível até daqui seis meses.
Se uma decisão atrapalha isso, está errada.
