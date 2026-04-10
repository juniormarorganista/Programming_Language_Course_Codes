# Como executar os exemplos

Este arquivo reúne um resumo rápido de execução. Os detalhes também aparecem nos `README.md` de cada pasta.

## Python
```bash
cd Python
pip3 install -r requirements.txt
python3 Foundations/hello_world.py
python3 OOP/bank_account.py
python3 Scientific_Computing/numpy_arrays.py
```

### Streamlit
```bash
cd Python/Apps
streamlit run app_streamlit.py
```

## SQL (SQLite)
```bash
cd SQL
sqlite3 portfolio.db < 01_schema.sql
sqlite3 portfolio.db < 02_insert_data.sql
sqlite3 -header -column portfolio.db < 10_reports.sql
```

## C
```bash
cd C
make help
make calculator
./calculator
```

## C++
```bash
cd CPP
make help
make calculator
./calculator_cpp
```

## Fortran
```bash
cd Fortran
make help
make bisection
./bisection
```

## R
```bash
cd R
Rscript basics/hello_world.R
Rscript statistics/summary_stats.R
```

## MATLAB / Octave
### Via Octave no terminal
```bash
cd Matlab_Octave
octave --quiet --eval "run('Basics/hello_world.m')"
octave --quiet --eval "run('Basics/plot_sine.m')"
```

### Dentro do MATLAB ou Octave
```matlab
run('Basics/hello_world.m')
run('Numerical_Calculation/bisection_demo.m')
```

## Mathematica
### Scripts `.wl`
```bash
cd Mathematica
wolfrun -script Basics/hello_world.wl
```

### Notebooks `.nb`
Abra o arquivo no Wolfram Mathematica.

## Power BI
Abra o arquivo `PowerBi/apresentacao.pbix` no **Power BI Desktop**.
