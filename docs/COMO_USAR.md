# Como usar este repositório

## Finalidade

Este repositório foi redesenhado para ser usado de três maneiras ao mesmo tempo:

1. **acervo preservado**: nada importante deve ser perdido;
2. **trilha de estudo**: cada linguagem precisa ter uma progressão clara;
3. **portfólio técnico**: o histórico do GitHub deve mostrar evolução real.

## Fluxo recomendado no Windows com VS Code

### 1. Abrir o projeto
```powershell
cd "C:\caminho\para\Programming_Language_Course_Codes"
code .
```

### 2. Antes de mexer em qualquer coisa
```powershell
git status
git branch
git remote -v
```

### 3. Criar uma branch por módulo
Exemplos:
```powershell
git checkout -b feat/python-basics
git checkout -b feat/sql-fundamentals
git checkout -b feat/java-oop
git checkout -b feat/frontend-html-css
```

### 4. Trabalhar em módulos pequenos
Evite commit gigante e bagunçado.
O ideal é um ciclo curto:

```powershell
git add .
git commit -m "feat: add java basics module"
git push -u origin feat/java-basics
```

### 5. Abrir Pull Request
Abra um PR no GitHub e descreva:
- o que foi feito;
- por que foi feito;
- como testar;
- o que fica para a próxima etapa.

## Como estudar

Cada pasta de linguagem deve ser organizada em camadas:
- `basics/`
- `exercises/`
- `projects/`
- `scientific/` quando fizer sentido
- `mini_projects/` quando fizer sentido

## Como nomear arquivos

Use prefixos numéricos para manter ordem didática:
- `01_...`
- `02_...`
- `03_...`

Exemplos:
- `01_hello.php`
- `02_arrays.php`
- `03_formulario.php`
- `01_HelloWorld.java`
- `02_Condicionais.java`

## Regra para não virar bagunça de novo

Todo arquivo novo deve responder estas 4 perguntas no topo:

- **Objetivo**
- **Como executar**
- **Conceitos treinados**
- **Próximo exercício**

## Ferramentas mínimas por linguagem

### PHP
- PHP instalado no Windows
- VS Code com extensão PHP opcional

### Java
- JDK instalado
- VS Code com Extension Pack for Java opcional

### Frontend
- navegador
- VS Code
- Live Server opcional

### TypeScript
- Node.js
- TypeScript (`npm install -g typescript`)

## O que não fazer

- não commitar binário gerado sem motivo;
- não misturar material de estudo com artefato compilado;
- não criar nomes de arquivo vagos como `teste2_final_agora_vai.py`;
- não jogar tudo na raiz da linguagem.

Esse repositório já sofreu o bastante.
