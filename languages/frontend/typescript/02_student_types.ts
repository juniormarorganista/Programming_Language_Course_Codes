/*
Objetivo: treinar interfaces e funções tipadas.
Como executar: tsc 02_student_types.ts && node 02_student_types.js
Conceitos treinados: interface, type inference, retorno tipado.
Próximo exercício: react/02_component_notes.html
*/
interface Student {
  name: string;
  grade: number;
}

function status(student: Student): string {
  return student.grade >= 6 ? 'Aprovado' : 'Reprovado';
}

const student: Student = { name: 'Ana', grade: 8.4 };
console.log(`${student.name} -> ${status(student)}`);
