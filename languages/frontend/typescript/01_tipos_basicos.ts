/*
Objetivo: praticar tipos básicos em TypeScript.
Como executar:
  cd .\languages\frontend\typescript
  tsc 01_tipos_basicos.ts
  node 01_tipos_basicos.js
Conceitos treinados: string, number, boolean, arrays, funções.
Próximo exercício: interfaces.
*/

const nome: string = "Juniormar";
const horasEstudo: number = 2;
const ativo: boolean = true;
const linguagens: string[] = ["Python", "C", "Java", "PHP"];

function resumoUsuario(nome: string, horas: number, ativo: boolean): string {
    return `${nome} estuda ${horas} hora(s) por dia. Ativo: ${ativo}`;
}

console.log(resumoUsuario(nome, horasEstudo, ativo));
console.log("Linguagens:", linguagens.join(", "));
