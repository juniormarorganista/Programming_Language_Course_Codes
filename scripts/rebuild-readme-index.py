from __future__ import annotations

import argparse
from pathlib import Path

SKIP_DIRS = {".git", ".venv", "venv", "node_modules", "build", "dist", "__pycache__"}


def should_skip(path: Path) -> bool:
    return any(part in SKIP_DIRS for part in path.parts)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", required=True)
    parser.add_argument("--output", required=True)
    args = parser.parse_args()

    root = Path(args.root).resolve()
    output = Path(args.output).resolve()

    readmes = []
    for path in root.rglob("README.md"):
        if should_skip(path):
            continue
        readmes.append(path)

    module_dirs = []
    languages = root / "languages"
    if languages.exists():
        for lang in sorted(languages.iterdir()):
            if lang.is_dir():
                module_dirs.append(lang)

    lines = [
        "# Índice de READMEs e módulos",
        "",
        f"- Raiz analisada: `{root}`",
        f"- READMEs encontrados: **{len(readmes)}**",
        f"- Diretórios de linguagem encontrados: **{len(module_dirs)}**",
        "",
        "## Diretórios de linguagem",
        "",
    ]
    for lang in module_dirs:
        lines.append(f"- `{lang.relative_to(root).as_posix()}`")

    lines += ["", "## READMEs encontrados", ""]
    for readme in sorted(readmes):
        lines.append(f"- `{readme.relative_to(root).as_posix()}`")

    output.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Índice gerado em: {output}")


if __name__ == "__main__":
    main()
