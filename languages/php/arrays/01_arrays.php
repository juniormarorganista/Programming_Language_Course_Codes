<?php
/*
Objetivo: trabalhar com arrays indexados e associativos.
Como executar: php .\languages\php\arrays\01_arrays.php
Conceitos treinados: arrays, foreach, chaves e valores.
Próximo exercício: 02_funcoes_array.php
*/

$linguagens = ["Python", "C", "Java", "PHP"];

echo "Linguagens cadastradas:\n";
foreach ($linguagens as $indice => $linguagem) {
    echo ($indice + 1) . ". $linguagem\n";
}

$perfil = [
    "nome" => "Juniormar",
    "objetivo" => "Aprender e reorganizar o repositório",
    "foco" => "Portfólio + estudo"
];

echo "\nPerfil:\n";
foreach ($perfil as $chave => $valor) {
    echo ucfirst($chave) . ": $valor\n";
}
