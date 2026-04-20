from __future__ import annotations

import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TMP = ROOT / "tests" / "_tmp_phase7"


def run(*args: str) -> None:
    subprocess.run([sys.executable, *args], cwd=ROOT, check=True)


def main() -> None:
    if TMP.exists():
        shutil.rmtree(TMP)
    TMP.mkdir(parents=True)

    sample = TMP / "sample.py"
    sample.write_text("print('ok')\n", encoding="utf-8")

    report = TMP / "report.md"
    run("scripts/generate-header-audit.py", "--root", str(TMP), "--output", str(report))
    assert report.exists(), "Relatório não foi gerado"

    run("scripts/apply-legacy-headers.py", "--root", str(TMP), "--extensions", ".py", "--apply")
    text = sample.read_text(encoding="utf-8")
    assert "Objetivo:" in text and "Como executar:" in text, "Cabeçalho não aplicado"

    index = TMP / "index.md"
    run("scripts/rebuild-readme-index.py", "--root", str(TMP), "--output", str(index))
    assert index.exists(), "Índice não foi gerado"

    print("Smoke test da fase 7 executado com sucesso.")


if __name__ == "__main__":
    main()
