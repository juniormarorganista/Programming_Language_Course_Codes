# Revisão transversal completa do repositório

Este documento fecha a última camada de acabamento do projeto. O objetivo não é produzir mais código por produzir; o objetivo é evitar que o repositório volte a virar um museu de arquivos órfãos.

## O que esta revisão cobre

1. **Navegação global**
   - o `README.md` principal deve apontar claramente para `docs/`, `languages/`, `scripts/` e `tests/`;
   - cada linguagem deve ter um `README.md` próprio;
   - os diretórios principais devem conter uma função clara.

2. **Consistência didática**
   - exemplos devem ter contexto mínimo;
   - mini projetos devem indicar entrada, saída e objetivo;
   - exercícios guiados devem apontar o próximo passo.

3. **Padronização dos arquivos legados**
   - o acervo antigo não deve ser apagado;
   - arquivos antigos devem receber cabeçalho mínimo;
   - quando o conteúdo for muito cru, o cabeçalho pode ser genérico e marcado para revisão manual.

4. **Fluxo de manutenção**
   - cada rodada maior deve gerar branch própria;
   - o repositório deve continuar utilizável no Windows com VS Code;
   - os scripts de validação devem ser simples o bastante para não virar outro projeto paralelo.

## Critérios objetivos de aceitação

A revisão transversal pode ser considerada concluída quando:

- existir relatório de auditoria dos arquivos sem cabeçalho;
- existir índice dos módulos e READMEs encontrados;
- os scripts da fase 7 rodarem sem erro no PowerShell;
- os cabeçalhos genéricos puderem ser aplicados em modo controlado;
- as mudanças puderem ser commitadas separadamente do conteúdo pedagógico.

## Estratégia recomendada

Use a sequência abaixo:

1. gerar o relatório dos arquivos sem cabeçalho;
2. aplicar cabeçalho primeiro em Python e SQL;
3. revisar manualmente os arquivos que merecem descrição melhor;
4. aplicar em C, C++, Java, PHP e scripts web simples;
5. deixar MATLAB/Octave, R, Fortran e Mathematica numa segunda passada, porque alguns arquivos científicos merecem descrição menos genérica.

## O que não fazer

- não reescrever todos os arquivos antigos de uma vez;
- não misturar “padronização de cabeçalho” com “refatoração de lógica” no mesmo commit;
- não sair adicionando comentário automático em notebook binário, arquivo compilado ou material que não é código-fonte.

## Resultado esperado

Ao final, o repositório deve continuar preservando sua história, mas com cara de laboratório organizado: trilhas claras, documentação navegável e exemplos antigos minimamente contextualizados.
