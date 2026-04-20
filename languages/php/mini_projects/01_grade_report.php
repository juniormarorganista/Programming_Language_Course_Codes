<?php
/*
Objetivo: mini projeto simples para relatório de notas.
Como executar: php .\languages\php\mini_projects\01_grade_report.php
Conceitos treinados: arrays, funções, condição.
Próximo exercício: persistir em arquivo JSON.
*/

$students = [
    ['nome' => 'Ana', 'nota' => 8.0],
    ['nome' => 'Bruno', 'nota' => 5.5],
    ['nome' => 'Carla', 'nota' => 9.1],
];

foreach ($students as $student) {
    $status = $student['nota'] >= 6.0 ? 'Aprovado' : 'Reprovado';
    echo $student['nome'] . ' | ' . $student['nota'] . ' | ' . $status . PHP_EOL;
}
