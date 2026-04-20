# Frontend

## Objetivo

Construir base real em interface web, começando pelo básico antes de subir para abstrações maiores.

## Estrutura do módulo

```text
languages/frontend/
├── README.md
├── html_css/
├── javascript/
├── typescript/
└── react/
```

## Ordem sugerida

1. HTML
2. CSS
3. JavaScript no navegador
4. manipulação do DOM
5. TypeScript
6. React

## Execução local

### HTML/CSS/JavaScript
Abra os arquivos `.html` no navegador ou use Live Server.

### TypeScript
```powershell
npm install -g typescript
cd .\languages\frontend\typescript
tsc 01_tipos_basicos.ts
node 01_tipos_basicos.js
```

### React sem build
Abra o arquivo:
- `languages/frontend/react/01_react_cdn.html`

## Mini projetos sugeridos

- landing page
- calculadora web
- lista de tarefas
- cronômetro
- formulário com validação
