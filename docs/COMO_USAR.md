# Como usar este repositório

## Propósito

Este repositório foi reorganizado para servir simultaneamente como:

- trilha pessoal de aprendizagem;
- base de revisão rápida;
- portfólio técnico;
- laboratório controlado para prática com Git e GitHub.

## Fluxo recomendado no Windows com VS Code

### 1. Abrir o projeto

No PowerShell:

```powershell
cd "C:\caminho\para\Programming_Language_Course_Codes"
code .
```

### 2. Criar a branch de reorganização

```powershell
git checkout main
git pull origin main
git checkout -b chore/rebuild-learning-repo
```

### 3. Executar a reorganização inicial

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\setup-restructure.ps1
```

### 4. Conferir o resultado

```powershell
git status
powershell -ExecutionPolicy Bypass -File .\scripts\check-structure.ps1
```

### 5. Salvar a etapa

```powershell
git add .
git commit -m "refactor: reorganize repository into learning structure"
git push -u origin chore/rebuild-learning-repo
```

## Como estudar por linguagem

Cada pasta de linguagem deve seguir esta ordem:

1. `basics/`
2. `exercises/`
3. `projects/` ou `mini_projects/`
4. `README.md`

## Como documentar cada exemplo

No topo de cada arquivo novo, incluir:

```text
Objetivo:
Como executar:
Conceitos treinados:
Próximo exercício:
```

## Como crescer o repositório sem bagunçar

- uma linguagem por vez;
- um módulo por branch;
- um pequeno conjunto de arquivos por commit;
- README atualizado junto do código.
