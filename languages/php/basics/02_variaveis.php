<?php
/*
Objetivo: praticar variáveis, tipos simples e interpolação de strings.
Como executar: php .\languages\php\basics\02_variaveis.php
Conceitos treinados: variáveis, inteiros, float, boolean, strings.
Próximo exercício: 03_condicionais.php
*/

$nome = "Juniormar";
$idade = 30;
$altura = 1.78;
$estudaPhp = true;

echo "Nome: $nome\n";
echo "Idade: $idade\n";
echo "Altura: $altura\n";
echo "Estuda PHP? " . ($estudaPhp ? "Sim" : "Não") . "\n";
