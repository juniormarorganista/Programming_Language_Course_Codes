(* Objetivo: praticar simplificação e fatoração simbólica. *)
(* Como executar: wolframscript -file .\languages\mathematica\algebra\01_symbolic_examples.wls *)
(* Conceitos treinados: Expand, Factor, Simplify. *)
(* Próximo exercício: calculus/01_limits_derivatives_integrals.wls *)

expr = (x + 1)^3;
Print["Expand: ", Expand[expr]];
Print["Factor: ", Factor[x^2 - 5 x + 6]];
Print["Simplify: ", Simplify[(x^2 - 1)/(x - 1)]];
