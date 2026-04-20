/*
Objetivo: treinar métodos de array em JavaScript.
Como executar: node .\languages\frontend\javascript\01_array_methods.js
Conceitos treinados: map, filter, reduce.
Próximo exercício: 02_dom_counter.html
*/
const grades = [7.5, 8.0, 5.2, 9.1];
const approved = grades.filter((grade) => grade >= 6);
const boosted = grades.map((grade) => Number((grade + 0.5).toFixed(1)));
const average = grades.reduce((acc, value) => acc + value, 0) / grades.length;

console.log({ approved, boosted, average: Number(average.toFixed(2)) });
