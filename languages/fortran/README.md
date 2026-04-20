# Fortran

## Objetivo

Preservar e documentar códigos numéricos, com foco em computação científica.

## O que já existe

- cálculo de média em estatística

## Estrutura sugerida

```text
languages/fortran/
├── README.md
├── basics/
├── statistics/
└── scientific/
```

## Como compilar

Com `gfortran`:

```powershell
gfortran .\languages\fortran\statistics\calcular_media.f90 -o calcular_media.exe
.\calcular_media.exe
```

## Próximos passos

- documentar exemplos numéricos simples
- criar um módulo básico com entrada, laços e vetores
