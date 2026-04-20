(* Objetivo: revisar limite, derivada e integral simbólica. *)
(* Como executar: wolframscript -file .\languages\mathematica\calculus\01_limits_derivatives_integrals.wls *)
(* Conceitos treinados: Limit, D, Integrate. *)
(* Próximo exercício: plots/01_basic_plot.wls *)

Print["Limite: ", Limit[Sin[x]/x, x -> 0]];
Print["Derivada: ", D[x^3 + 2 x^2 - x + 1, x]];
Print["Integral: ", Integrate[x^2 + 2 x + 1, x]];
