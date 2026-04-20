from pathlib import Path

required = [
    "README.md",
    "docs/COMO_USAR.md",
    "docs/ROADMAP.md",
    "docs/CONVENCOES.md",
    "docs/ACHIEVEMENTS_GITHUB.md",
    "docs/NAVEGACAO_GERAL.md",
    "languages/python/README.md",
    "languages/java/README.md",
    "languages/php/README.md",
    "languages/frontend/README.md",
    "scripts/validate-phase6.ps1",
]

missing = [p for p in required if not Path(p).exists()]
if missing:
    raise SystemExit("Arquivos ausentes:\n" + "\n".join(missing))

print("Estrutura principal encontrada com sucesso.")
