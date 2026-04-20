<?php
/*
Objetivo: criar e usar funções simples.
Como executar: php .\languages\php\functions\01_functions.php
Conceitos treinados: função e retorno.
Próximo exercício: ../arrays/01_arrays.php
*/

function media(array $notas): float {
    return array_sum($notas) / count($notas);
}

$notas = [7.5, 8.0, 9.0];
echo "Média: " . media($notas) . PHP_EOL;
