$ErrorActionPreference = 'Stop'

python .\scripts\generate-header-audit.py --root . --output .\docs\relatorio_cabecalhos_legados.md
python .\scripts\rebuild-readme-index.py --root . --output .\docs\indice_modulos.md
python .\tests\header_tools_smoke.py

Write-Host 'Revisão transversal da fase 7 concluída.' -ForegroundColor Green
