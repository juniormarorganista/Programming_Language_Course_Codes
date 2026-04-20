<?php
/*
Objetivo: introduzir classes e objetos em PHP.
Como executar: php .\languages\php\oop\01_pessoa.php
Conceitos treinados: classe, construtor, métodos, encapsulamento simples.
Próximo exercício: herança e composição.
*/

class Pessoa {
    private string $nome;
    private string $area;

    public function __construct(string $nome, string $area) {
        $this->nome = $nome;
        $this->area = $area;
    }

    public function apresentar(): string {
        return "Olá, meu nome é {$this->nome} e estudo {$this->area}.";
    }
}

$usuario = new Pessoa("Juniormar", "programação");
echo $usuario->apresentar() . PHP_EOL;
