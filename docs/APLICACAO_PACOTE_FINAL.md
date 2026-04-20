# Aplicação do pacote final consolidado

Este pacote reúne as fases de reorganização, documentação, trilhas por linguagem, exemplos iniciais,
templates do GitHub e ferramentas de revisão transversal do acervo legado.

## Ordem recomendada

1. Criar uma branch de trabalho dedicada.
2. Copiar o conteúdo do pacote para a raiz do repositório.
3. Rodar o script `scripts/setup-restructure.ps1`.
4. Rodar `scripts/validate-final.ps1`.
5. Revisar `git status`.
6. Fazer o commit inicial da reforma.
7. Seguir com os commits temáticos por linguagem ou por bloco.

## Observação

Os scripts de compilação e alguns exemplos dependem de ferramentas externas disponíveis no PATH
(`python`, `php`, `javac`, `java`, `node`, `octave`, `Rscript`, `wolframscript`, `gcc`, `g++`, `gfortran`).
O script de validação final faz a checagem obrigatória em Python e estrutura; os demais blocos podem ser testados separadamente.
