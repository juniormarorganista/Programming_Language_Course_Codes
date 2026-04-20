<?php
/*
Objetivo: trabalhar com arrays associativos.
Como executar: php .\languages\php\arrays\01_arrays.php
Conceitos treinados: arrays e foreach.
Próximo exercício: ../oop/01_student.php
*/

$alunos = [
    ["nome" => "Ana", "nota" => 8.5],
    ["nome" => "Bruno", "nota" => 5.9],
];

foreach ($alunos as $aluno) {
    echo $aluno["nome"] . " -> " . $aluno["nota"] . PHP_EOL;
}
