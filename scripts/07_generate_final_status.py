from __future__ import annotations

import argparse
from pathlib import Path
import textwrap

DEFAULT_DIRS = [
    "docs",
    ".github",
    "languages",
    "scripts",
    "shared",
    "tests",
]

def main() -> None:
    parser = argparse.ArgumentParser(description="Gera um relatório simples do estado final do repositório.")
    parser.add_argument("--root", default=".", help="Raiz do repositório")
    parser.add_argument("--output", default="docs/status_final_gerado.md", help="Arquivo de saída")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    output = Path(args.output)
    if not output.is_absolute():
        output = root / output

    lines: list[str] = []
    lines.append("# Status final gerado\n")
    lines.append(f"Raiz analisada: `{root}`\n")

    lines.append("## Diretórios esperados\n")
    for item in DEFAULT_DIRS:
        exists = (root / item).exists()
        marker = "OK" if exists else "FALTANDO"
        lines.append(f"- **{item}**: {marker}")

    lines.append("\n## Observação\n")
    lines.append(
        "Este relatório não substitui revisão humana. Ele só confirma a presença dos diretórios estruturais principais."
    )

    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines), encoding="utf-8")
    print(f"Relatório gravado em: {output}")

if __name__ == "__main__":
    main()
