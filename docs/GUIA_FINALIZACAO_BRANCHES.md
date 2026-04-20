# Guia de finalização das branches

## Regra geral

Você não vai tentar salvar cada branch como se fosse patrimônio da humanidade.

Vai classificar cada uma em:

### Tipo A — descartar
Não agrega nada ou já foi absorvida.

### Tipo B — aproveitar parcialmente
Tem coisa boa, mas misturada.

### Tipo C — aproveitar inteira
Está coesa e pode entrar numa branch final por merge.

## Branches finais sugeridas

- `final/01-estrutura-docs`
- `final/02-python-sql`
- `final/03-c-cpp-fortran`
- `final/04-matlab-r-mathematica`
- `final/05-java-php-frontend`
- `final/06-revisao-transversal`

## Como analisar uma branch

### Ver commits que só existem nela
```powershell
git log --oneline origin/main..origin/NOME_DA_BRANCH
```

### Ver resumo dos arquivos alterados
```powershell
git diff --stat origin/main..origin/NOME_DA_BRANCH
```

### Ver diff completo
```powershell
git diff origin/main..origin/NOME_DA_BRANCH
```

## Como decidir o destino

### Se a branch é coerente
Faça merge dela dentro da `final/*` correspondente.

### Se a branch está misturada
Use cherry-pick dos commits bons.

### Se a branch está caótica
Copie só os arquivos que interessam para a branch final e faça um commit limpo.

## Estratégia prática

### Estrutura e documentação
Vai para `final/01-estrutura-docs`.

### Python e SQL
Vai para `final/02-python-sql`.

### C, C++ e Fortran
Vai para `final/03-c-cpp-fortran`.

### MATLAB/Octave, R e Mathematica
Vai para `final/04-matlab-r-mathematica`.

### Java, PHP e Frontend
Vai para `final/05-java-php-frontend`.

### Padronização transversal
Vai para `final/06-revisao-transversal`.

## O que não fazer

- mergear tudo direto em `main`;
- tentar preservar branch ruim por apego emocional;
- abrir PR com 400 arquivos sem separação temática.
