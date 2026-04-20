# Programming Language Course Codes

Repositório reorganizado para funcionar como trilha de estudo, portfólio técnico e base de prática contínua no GitHub.

## Objetivos

- estudar linguagens de programação com organização real;
- preservar os códigos antigos sem perder histórico;
- documentar tudo o que for aprendido;
- evoluir o repositório em módulos pequenos e bem versionados;
- usar o GitHub de forma estratégica, sem transformar o projeto em bagunça.

## Estrutura do projeto

```text
Programming_Language_Course_Codes/
├── README.md
├── docs/
│   ├── COMO_USAR.md
│   ├── ROADMAP.md
│   ├── CONVENCOES.md
│   ├── ACHIEVEMENTS_GITHUB.md
│   └── assets/
├── languages/
│   ├── python/
│   ├── c/
│   ├── cpp/
│   ├── fortran/
│   ├── matlab_octave/
│   ├── mathematica/
│   ├── r/
│   ├── sql/
│   ├── php/
│   ├── java/
│   └── frontend/
│       ├── html_css/
│       ├── javascript/
│       ├── typescript/
│       └── react/
├── shared/
│   ├── templates/
│   └── examples/
├── tests/
└── scripts/
```

## Organização pedagógica

Cada linguagem deve evoluir com a mesma lógica:

1. fundamentos;
2. exercícios;
3. mini projetos;
4. documentação;
5. próximos passos.

## Linguagens atualmente contempladas

- Python
- C
- C++
- Fortran
- MATLAB/Octave
- Mathematica
- R
- SQL
- PHP
- Java
- Frontend (HTML/CSS, JavaScript, TypeScript e React)

## Regras do jogo

- não apagar código antigo sem preservar histórico;
- usar `git mv` sempre que possível;
- um tema por branch;
- um avanço por commit coerente;
- documentação obrigatória em todo módulo novo.

## Primeiros comandos

Veja os guias:

- [`docs/COMO_USAR.md`](docs/COMO_USAR.md)
- [`docs/ROADMAP.md`](docs/ROADMAP.md)
- [`docs/CONVENCOES.md`](docs/CONVENCOES.md)
- [`docs/ACHIEVEMENTS_GITHUB.md`](docs/ACHIEVEMENTS_GITHUB.md)

## Fluxo sugerido

```powershell
git checkout main
git pull origin main
git checkout -b chore/rebuild-learning-repo
```

Depois execute o script:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\setup-restructure.ps1
```

## Observação importante

O objetivo deste repositório não é parecer enorme. É parecer consistente. Repositório inchado sem trilha vira museu de gambiarra.
