# Comandos para Windows + VS Code

## 1. Abrir a pasta do projeto

```powershell
cd "C:\caminho\para\Programming_Language_Course_Codes"
code .
```

## 2. Garantir que o Git esteja ok

```powershell
git status
git remote -v
```

## 3. Atualizar a branch principal e criar a branch de trabalho

```powershell
git checkout main
git pull origin main
git checkout -b chore/rebuild-learning-repo
```

## 4. Copiar os arquivos deste pacote para a raiz do projeto

Copie para dentro do seu repositório:

- `README.md`
- `.gitignore`
- pasta `docs/`
- pasta `languages/` com os `README.md`
- pasta `shared/templates/`
- pasta `scripts/`

## 5. Executar a reorganização inicial

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\setup-restructure.ps1
```

## 6. Validar a estrutura

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\check-structure.ps1
git status
```

## 7. Fazer o primeiro commit da reforma

```powershell
git add .
git commit -m "refactor: reorganize repository into learning structure"
git push -u origin chore/rebuild-learning-repo
```

## 8. Abrir o projeto seguinte

Exemplo para Java:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\create-module-branch-example.ps1 -BranchName "feat/java-basics"
```
