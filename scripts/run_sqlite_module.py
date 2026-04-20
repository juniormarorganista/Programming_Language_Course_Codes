from __future__ import annotations

import argparse
import sqlite3
from pathlib import Path


def format_value(value: object) -> str:
    return "NULL" if value is None else str(value)


def main() -> None:
    parser = argparse.ArgumentParser(description="Executa um arquivo SQL em um banco SQLite local.")
    parser.add_argument("--file", required=True, help="Caminho para o arquivo .sql")
    parser.add_argument("--db", default="study_sql.db", help="Arquivo do banco SQLite")
    parser.add_argument("--reset", action="store_true", help="Apaga o banco antes de executar")
    args = parser.parse_args()

    sql_file = Path(args.file)
    if not sql_file.exists():
        raise SystemExit(f"Arquivo não encontrado: {sql_file}")

    db_path = Path(args.db)
    if args.reset and db_path.exists():
        db_path.unlink()

    script = sql_file.read_text(encoding="utf-8")

    with sqlite3.connect(db_path) as conn:
        conn.row_factory = sqlite3.Row
        cursor = conn.cursor()
        statements = [item.strip() for item in script.split(";") if item.strip()]

        for statement in statements:
            cursor.execute(statement)
            if statement.lower().startswith("select"):
                rows = cursor.fetchall()
                print(f"\n>>> {statement}\n")
                if not rows:
                    print("(sem resultados)")
                    continue
                columns = rows[0].keys()
                print(" | ".join(columns))
                print("-" * (len(" | ".join(columns)) + 4))
                for row in rows:
                    print(" | ".join(format_value(row[col]) for col in columns))

        conn.commit()

    print(f"\nExecução concluída em: {db_path.resolve()}")


if __name__ == "__main__":
    main()
