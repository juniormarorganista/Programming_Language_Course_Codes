<?php
/*
Objetivo: criar e usar funções simples.
Como executar: php .\languages\php\functions\01_funcoes.php
Conceitos treinados: parâmetros, retorno, tipagem simples.
Próximo exercício: 02_funcoes_com_arrays.php
*/

function soma(float $a, float $b): float {
    return $a + $b;
}

function saudacao(string $nome): string {
    return "Olá, $nome! Bem-vindo ao módulo de funções em PHP.";
}

echo saudacao("Juniormar") . "\n";
echo "2.5 + 4.3 = " . soma(2.5, 4.3) . "\n";
