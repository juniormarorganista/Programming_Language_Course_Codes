# SQL

Esta trilha usa um banco SQLite para permitir estudo local sem instalar servidor pesado. A ideia é treinar modelagem, consultas, joins, agregações e subconsultas de forma incremental.

## Estrutura

- `basics/`: criação de tabela, inserções e consultas iniciais.
- `joins/`: junções entre tabelas.
- `aggregation/`: agrupamentos e métricas.
- `subqueries/`: subconsultas.
- `views/`: views reutilizáveis.
- `exercises/`: lista de exercícios para praticar.
- `datasets/`: observações sobre a base didática.

## Como executar no Windows

A forma mais prática desta trilha é usar o script Python que executa os arquivos `.sql` em um banco SQLite local.

```powershell
python .\scripts\run_sqlite_module.py --reset --file .\languages\sql\basics\01_schema.sql
python .\scripts\run_sqlite_module.py --file .\languages\sql\basics\02_inserts.sql
python .\scripts\run_sqlite_module.py --file .\languages\sql\basics\03_queries.sql
```

## Ordem sugerida

1. `basics/01_schema.sql`
2. `basics/02_inserts.sql`
3. `basics/03_queries.sql`
4. `joins/01_join_examples.sql`
5. `aggregation/01_group_by.sql`
6. `subqueries/01_subqueries.sql`
7. `views/01_views.sql`
8. `exercises/01_exercicios.md`
