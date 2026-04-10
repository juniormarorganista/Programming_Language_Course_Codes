# MATLAB / Octave

Esta pasta mistura exemplos introdutórios, scripts numéricos e material técnico preservado.

## Estrutura
- `Basics/` — primeiros scripts, vetores, matrizes e gráficos
- `Functions/` — funções definidas pelo usuário
- `Numerical_Calculation/` — exemplos de cálculo numérico
- `LST_PTT/` — material técnico e scripts de estudo/pesquisa

## Como executar no Octave
```bash
cd Matlab_Octave
octave --quiet --eval "run('Basics/hello_world.m')"
octave --quiet --eval "run('Basics/plot_sine.m')"
octave --quiet --eval "run('Numerical_Calculation/bisection_demo.m')"
```

## Como executar no MATLAB ou Octave interativo
```matlab
run('Basics/hello_world.m')
run('Basics/vectors_and_matrices.m')
run('Numerical_Calculation/interpolation_demo.m')
```
