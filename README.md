# Programming Language Course Codes

Repositório de estudo, prática e documentação de linguagens de programação.

Esta é a **versão final por enquanto** do projeto: uma base estável, organizada e pronta para crescer no futuro sem virar bagunça de novo.

## Objetivos

- preservar o acervo antigo;
- manter trilhas de estudo por linguagem;
- transformar o repositório em material de aprendizagem e portfólio;
- usar um fluxo de Git/GitHub saudável: branch curta, PR claro, merge limpo e release por marco.

## Estrutura principal

```text
docs/
.github/
languages/
scripts/
shared/
tests/
README.md
CHANGELOG.md
CONTRIBUTING.md
```

## Módulos centrais

- Python
- SQL
- C
- C++
- Fortran
- MATLAB/Octave
- R
- Mathematica
- Java
- PHP
- Frontend

## Fechamento desta versão

Os arquivos desta pasta foram pensados para:

1. consolidar a versão estável atual;
2. organizar a limpeza das branches;
3. preparar PRs finais;
4. gerar a release `v1.0.0`.

## Documentos principais

- `docs/APLICACAO_VERSAO_FINAL_AGORA.md`
- `docs/GUIA_FINALIZACAO_BRANCHES.md`
- `docs/MAPA_DE_PRS_FINAIS.md`
- `docs/CHECKLIST_RELEASE_v1.0.0.md`
- `docs/RESUMO_DA_VERSAO_ATUAL.md`

## Scripts principais

- `scripts/01_inventory_branches.ps1`
- `scripts/02_create_final_branches.ps1`
- `scripts/03_report_branch_diff.ps1`
- `scripts/04_cleanup_local_branches.ps1`
- `scripts/05_delete_remote_branch.ps1`
- `scripts/06_prepare_release.ps1`
- `scripts/07_generate_final_status.py`

## Estratégia

A regra daqui para frente é simples:

- nada de branch aleatória;
- uma branch por bloco;
- um PR por bloco;
- merge no `main`;
- release ao final.

É chato? Um pouco. Funciona? Muito mais.
