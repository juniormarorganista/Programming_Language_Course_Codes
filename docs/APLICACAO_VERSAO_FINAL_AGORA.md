# Aplicação da versão final por agora

Este documento existe para uma coisa só: fechar o projeto atual sem perder trabalho e sem continuar alimentando a salada de branches.

## Objetivo

Transformar o que já foi produzido em uma versão estável com:

- `main` limpo;
- PRs finais organizados;
- branches antigas arquivadas ou apagadas;
- release `v1.0.0`.

## Ordem de execução

1. fazer backup do estado atual;
2. inventariar branches;
3. criar branches finais limpas;
4. puxar conteúdo útil para as branches finais;
5. abrir PRs;
6. fazer merge;
7. apagar branches antigas;
8. publicar release.

## Arquivos que você deve usar

- `docs/GUIA_FINALIZACAO_BRANCHES.md`
- `docs/MAPA_DE_PRS_FINAIS.md`
- `docs/CHECKLIST_RELEASE_v1.0.0.md`
- `scripts/01_inventory_branches.ps1`
- `scripts/02_create_final_branches.ps1`
- `scripts/03_report_branch_diff.ps1`
- `scripts/06_prepare_release.ps1`

## Resultado esperado

Ao final, o repositório deve ficar com estas branches relevantes:

- `main`
- opcionalmente `backup/branch-salad-final`
- temporariamente as `final/*` até os PRs serem mergeados

Depois dos merges, o objetivo é deixar viva só a `main` e a branch de backup.
