# Programming Language Course Codes

Repositório reorganizado para funcionar como trilha de estudo, laboratório de prática e vitrine técnica no GitHub.

## Estrutura principal

- `docs/`: documentação geral, roadmap e convenções.
- `languages/`: conteúdo por linguagem, separado por módulos.
- `shared/`: templates e exemplos compartilhados.
- `scripts/`: automações simples para Windows e validações.

## Fase atual

Esta fase fortalece principalmente:

- `languages/python/`
- `languages/sql/`

A ideia é sair do modelo “arquivo solto” e entrar em “módulos com progressão”.

## Ordem sugerida de estudo nesta etapa

1. `languages/python/basics`
2. `languages/python/exercises/guided`
3. `languages/python/projects`
4. `languages/sql/basics`
5. `languages/sql/joins`
6. `languages/sql/aggregation`
7. `languages/sql/subqueries`
8. `languages/sql/views`
9. `languages/sql/exercises`

## Execução rápida

### Python

```powershell
python .\languages\python\basics\01_hello.py
python .\languages\python\projects\01_cli_gradebook.py
```

### SQL com SQLite via Python

```powershell
python .\scripts\run_sqlite_module.py --reset --file .\languages\sql\basics\01_schema.sql
python .\scripts\run_sqlite_module.py --file .\languages\sql\basics\02_inserts.sql
python .\scripts\run_sqlite_module.py --file .\languages\sql\basics\03_queries.sql
```
