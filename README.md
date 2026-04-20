# Programming Language Course Codes

Repositório reorganizado para funcionar ao mesmo tempo como:

- acervo preservado de códigos antigos;
- trilha de estudo por linguagem, tema e nível;
- portfólio técnico versionado com fluxo saudável de Git/GitHub.

A ideia central deste projeto é simples: **não perder o material antigo**, mas parar de tratá-lo como caixa de arquivos soltos. O repositório passa a ter estrutura, documentação e rotina de evolução. Isso segue o plano-base de reconstrução em três camadas: preservação do acervo, nova estrutura didática e camada de portfólio/GitHub.

---

## Estrutura geral

```text
Programming_Language_Course_Codes/
├── README.md
├── docs/
├── languages/
├── shared/
├── tests/
├── scripts/
└── .github/
```

### `docs/`
Documentação do projeto: como usar, roadmap, convenções, rotina semanal, releases e navegação geral.

### `languages/`
Trilhas por linguagem.

- `python/`
- `c/`
- `cpp/`
- `fortran/`
- `matlab_octave/`
- `mathematica/`
- `r/`
- `sql/`
- `php/`
- `java/`
- `frontend/`

### `shared/`
Templates, exemplos compartilhados, datasets e materiais reaproveitáveis.

### `scripts/`
Automação local para Windows/PowerShell: validação de estrutura, smoke tests e apoio ao fluxo de estudo.

### `.github/`
Templates de issue, PR e workflow simples de CI.

---

## Ordem recomendada de estudo

### Base forte
1. Python
2. SQL
3. C
4. C++

### Expansão prática
5. Java
6. PHP
7. Frontend

### Trilhas matemáticas/científicas
8. MATLAB/Octave
9. R
10. Mathematica
11. Fortran

---

## Navegação rápida

- [Como usar o repositório](docs/COMO_USAR.md)
- [Roadmap geral](docs/ROADMAP.md)
- [Convenções do projeto](docs/CONVENCOES.md)
- [Guia de achievements e fluxo GitHub](docs/ACHIEVEMENTS_GITHUB.md)
- [Mapa de navegação do repositório](docs/NAVEGACAO_GERAL.md)
- [Plano mensal de estudo](docs/ROADMAP_MENSAL_12_SEMANAS.md)
- [Guia semanal de estudo](docs/GUIA_DE_ESTUDO_SEMANAL.md)
- [Guia de PRs e releases](docs/GUIA_DE_PULL_REQUESTS.md)

---

## Regras do jogo

1. Não apagar acervo antigo sem preservar histórico.
2. Usar `git mv` para reorganizações.
3. Cada exemplo novo deve ter cabeçalho com:
   - Objetivo
   - Como executar
   - Conceitos treinados
   - Próximo exercício
4. Cada módulo relevante deve nascer com README.
5. Cada fase importante deve gerar branch, commit limpo, PR e release.

---

## Fluxo Git recomendado

```bash
git checkout main
git pull origin main
git checkout -b feat/nome-da-fase
```

Trabalhe em blocos pequenos:

```bash
git add .
git commit -m "feat: add java oop starter module"
git push -u origin feat/nome-da-fase
```

Depois abra o PR no GitHub.

---

## Stack de execução local

### Windows + VS Code
Este repositório foi preparado para ser confortável no Windows usando PowerShell e VS Code.

Ferramentas úteis:
- Python
- Git
- GCC / G++ / GFortran
- Java JDK
- PHP
- Node.js
- Octave
- R
- WolframScript (opcional)

Nem tudo é obrigatório para começar. Python, Git e VS Code já resolvem metade da festa.

---

## Estado atual do projeto

Este repositório foi convertido de coleção dispersa para **trilha de estudo documentada**. O acervo original continua sendo preservado via histórico Git, enquanto a organização nova privilegia:

- aprendizado incremental;
- material reutilizável;
- documentação séria;
- evolução compatível com portfólio público.

---

## Próximas metas

- reforçar ainda mais Java, PHP e Frontend;
- adicionar mais mini projetos integrados entre linguagens;
- ampliar testes e CI;
- produzir releases por etapa de estudo.
