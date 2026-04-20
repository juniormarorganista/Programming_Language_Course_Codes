from __future__ import annotations

import argparse
from pathlib import Path

SUPPORTED = {
    ".py", ".c", ".h", ".cpp", ".java", ".js", ".ts", ".php",
    ".sql", ".R", ".r", ".m", ".f90", ".f95", ".f03", ".html", ".wls"
}
SKIP_DIRS = {".git", ".venv", "venv", "node_modules", "build", "dist", "__pycache__"}
KEYWORDS = ("Objetivo:", "Como executar:", "Conceitos treinados:", "Próximo exercício:")


def should_skip(path: Path) -> bool:
    return any(part in SKIP_DIRS for part in path.parts)


def has_header(path: Path) -> bool:
    try:
        text = path.read_text(encoding="utf-8")
    except UnicodeDecodeError:
        text = path.read_text(encoding="latin-1")
    head = "\n".join(text.splitlines()[:12])
    return all(k in head for k in KEYWORDS)


def gather(root: Path):
    files = []
    for path in root.rglob("*"):
        if not path.is_file() or should_skip(path):
            continue
        if path.suffix not in SUPPORTED:
            continue
        files.append(path)
    return sorted(files)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", required=True)
    parser.add_argument("--output", required=True)
    args = parser.parse_args()

    root = Path(args.root).resolve()
    output = Path(args.output).resolve()

    files = gather(root)
    missing = [p for p in files if not has_header(p)]

    lines = [
        "# Relatório de auditoria de cabeçalhos legados",
        "",
        f"- Raiz analisada: `{root}`",
        f"- Arquivos de código suportados encontrados: **{len(files)}**",
        f"- Arquivos sem cabeçalho padrão: **{len(missing)}**",
        "",
        "## Arquivos sem cabeçalho",
        "",
    ]
    for path in missing:
        lines.append(f"- `{path.relative_to(root).as_posix()}`")

    output.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Relatório gerado em: {output}")
    print(f"Arquivos encontrados: {len(files)}")
    print(f"Arquivos sem cabeçalho: {len(missing)}")


if __name__ == "__main__":
    main()
