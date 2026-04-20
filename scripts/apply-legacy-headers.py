from __future__ import annotations

import argparse
from pathlib import Path

SKIP_DIRS = {".git", ".venv", "venv", "node_modules", "build", "dist", "__pycache__"}
KEYWORDS = ("Objetivo:", "Como executar:", "Conceitos treinados:", "Próximo exercício:")

LINE_STYLE = {
    ".py": ("# ", ""),
    ".c": ("// ", ""),
    ".h": ("// ", ""),
    ".cpp": ("// ", ""),
    ".java": ("// ", ""),
    ".js": ("// ", ""),
    ".ts": ("// ", ""),
    ".php": ("// ", ""),
    ".sql": ("-- ", ""),
    ".R": ("# ", ""),
    ".r": ("# ", ""),
    ".m": ("% ", ""),
    ".f90": ("! ", ""),
    ".f95": ("! ", ""),
    ".f03": ("! ", ""),
}

BLOCK_STYLE = {
    ".html": ("<!--", "-->"),
    ".wls": ("(*", "*)"),
}


def should_skip(path: Path) -> bool:
    return any(part in SKIP_DIRS for part in path.parts)


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8")
    except UnicodeDecodeError:
        return path.read_text(encoding="latin-1")


def has_header(text: str) -> bool:
    head = "\n".join(text.splitlines()[:12])
    return all(k in head for k in KEYWORDS)


def infer_run_hint(path: Path) -> str:
    suffix = path.suffix
    relative = path.as_posix()
    if suffix == ".py":
        return f"python {relative}"
    if suffix in {".c", ".h"}:
        return "compilar com gcc e executar o binário gerado"
    if suffix == ".cpp":
        return "compilar com g++ e executar o binário gerado"
    if suffix == ".java":
        return "compilar com javac e executar a classe principal"
    if suffix == ".js":
        return f"node {relative}"
    if suffix == ".ts":
        return "compilar com tsc e executar o JavaScript gerado"
    if suffix == ".php":
        return f"php {relative}"
    if suffix == ".sql":
        return "executar em SQLite, PostgreSQL ou outro banco compatível após revisão"
    if suffix in {".R", ".r"}:
        return f"Rscript {relative}"
    if suffix == ".m":
        return f"octave --quiet --eval \"run('{relative}')\""
    if suffix in {".f90", ".f95", ".f03"}:
        return "compilar com gfortran e executar o binário gerado"
    if suffix == ".html":
        return "abrir no navegador"
    if suffix == ".wls":
        return f"wolframscript -file {relative}"
    return "preencher manualmente"


def infer_goal(path: Path) -> str:
    parts = {p.lower() for p in path.parts}
    if "coursera" in parts:
        return "registrar e contextualizar este exercício legado do acervo de estudos"
    if "projects" in parts or "project" in parts:
        return "documentar este mini projeto legado e facilitar sua revisão futura"
    if "basics" in parts:
        return "documentar um exemplo básico legado da linguagem"
    if "scientific" in parts or "statistics" in parts or "numerical_methods" in parts:
        return "documentar um exemplo legado de caráter científico ou numérico"
    return "revisar e documentar este exemplo legado"


def build_header(path: Path) -> str:
    goal = infer_goal(path)
    run_hint = infer_run_hint(path)
    concepts = "preencher após revisão do conteúdo deste arquivo"
    next_step = "melhorar a descrição e propor um exercício derivado"

    suffix = path.suffix
    if suffix in LINE_STYLE:
        prefix, _ = LINE_STYLE[suffix]
        return "\n".join([
            f"{prefix}Objetivo: {goal}.",
            f"{prefix}Como executar: {run_hint}.",
            f"{prefix}Conceitos treinados: {concepts}.",
            f"{prefix}Próximo exercício: {next_step}.",
            "",
        ])
    if suffix in BLOCK_STYLE:
        start, end = BLOCK_STYLE[suffix]
        return "\n".join([
            start,
            f"Objetivo: {goal}.",
            f"Como executar: {run_hint}.",
            f"Conceitos treinados: {concepts}.",
            f"Próximo exercício: {next_step}.",
            end,
            "",
        ])
    raise ValueError(f"Extensão não suportada: {suffix}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", required=True)
    parser.add_argument("--extensions", nargs="+", required=True)
    parser.add_argument("--apply", action="store_true")
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    if args.apply == args.dry_run:
        raise SystemExit("Use exatamente um modo: --apply ou --dry-run")

    root = Path(args.root).resolve()
    extensions = set(args.extensions)
    targets = []
    for path in root.rglob("*"):
        if not path.is_file() or should_skip(path):
            continue
        if path.suffix not in extensions:
            continue
        if path.name.startswith("."):
            continue
        text = read_text(path)
        if has_header(text):
            continue
        targets.append(path)

    for path in targets:
        rel = path.relative_to(root)
        print(rel.as_posix())
        if args.apply:
            original = read_text(path)
            path.write_text(build_header(path) + original, encoding="utf-8")

    print(f"Arquivos elegíveis sem cabeçalho: {len(targets)}")
    print("Modo: apply" if args.apply else "Modo: dry-run")


if __name__ == "__main__":
    main()
