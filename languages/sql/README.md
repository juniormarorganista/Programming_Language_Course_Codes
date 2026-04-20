# SQL

## Objetivo

Estudar modelagem relacional, criação de tabelas, inserção, consultas e análise de dados.

## Estrutura sugerida

```text
languages/sql/
├── README.md
├── basics/
├── joins/
├── aggregation/
└── mini_projects/
```

## Ordem sugerida

1. `CREATE TABLE`
2. `INSERT`
3. `SELECT`
4. `WHERE`
5. `ORDER BY`
6. agregações
7. joins
8. subqueries
9. mini projeto

## Execução sugerida

Use SQLite para começar sem sofrimento.
Exemplo com `sqlite3`:

```powershell
sqlite3 estudo.db < .\languages\sql\basics\01_schema.sql
sqlite3 estudo.db < .\languages\sql\basics\02_inserts.sql
sqlite3 estudo.db < .\languages\sql\basics\03_queries.sql
```

## Próximos passos

- dividir o SQL antigo em partes menores
- criar consultas progressivas
- documentar resultados esperados
