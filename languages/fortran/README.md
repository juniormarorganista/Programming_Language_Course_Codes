# Fortran

A trilha de Fortran foi organizada para aproximar estudo de linguagem e computação científica.

## Estrutura

- `basics/`: sintaxe central, arrays, subrotinas e arquivos.
- `projects/`: pequenos programas completos.
- `statistics/`: espaço do material estatístico antigo reorganizado.

## Ordem sugerida

1. `basics/01_hello.f90`
2. `basics/02_variaveis_tipos.f90`
3. `basics/03_condicionais_lacos.f90`
4. `basics/04_subrotinas_funcoes.f90`
5. `basics/05_arrays.f90`
6. `basics/06_io_arquivos.f90`
7. `projects/01_grade_report.f90`
8. `statistics/README.md`

## Compilação no Windows

```powershell
powershell -ExecutionPolicy Bypass -File .\scriptsuild-fortran-module.ps1 -Source .\languagesortranasics_hello.f90
```

## Meta

Retomar a sintaxe moderna do Fortran, consolidar arrays e preparar terreno para códigos numéricos maiores.
