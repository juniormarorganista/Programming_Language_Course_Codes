(* Objetivo: gerar um gráfico simples em arquivo. *)
(* Como executar: wolframscript -file .\languages\mathematica\plots\01_basic_plot.wls *)
(* Conceitos treinados: Plot, Export. *)
(* Próximo exercício: projects/01_symbolic_report.wls *)

grafico = Plot[Sin[x], {x, 0, 2 Pi}, PlotLabel -> "Seno em [0, 2 Pi]"];
Export["languages/mathematica/plots/sine_plot.png", grafico];
Print["Arquivo gerado: languages/mathematica/plots/sine_plot.png"];
