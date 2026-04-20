(* Objetivo: gerar um pequeno relatório simbólico. *)
(* Como executar: wolframscript -file .\languages\mathematica\projects\01_symbolic_report.wls *)
(* Conceitos treinados: Solve, Sum, Table. *)
(* Próximo exercício: adaptar para outro problema algébrico. *)

solucao = Solve[x^2 - 5 x + 6 == 0, x];
soma = Sum[n^2, {n, 1, 10}];
tabela = Table[{n, n^2, n^3}, {n, 1, 5}];

Print["Soluções de x^2 - 5x + 6 = 0: ", solucao];
Print["Soma de n^2 de 1 a 10: ", soma];
Print["Tabela {n, n^2, n^3}: ", tabela];
