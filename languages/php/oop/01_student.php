<?php
/*
Objetivo: definir uma classe simples em PHP.
Como executar: php .\languages\php\oop\02_student_demo.php
Conceitos treinados: classe, construtor, método.
Próximo exercício: ../mini_projects/01_grade_report.php
*/

class Student {
    public string $name;
    public float $grade;

    public function __construct(string $name, float $grade) {
        $this->name = $name;
        $this->grade = $grade;
    }

    public function status(): string {
        return $this->grade >= 6.0 ? 'Aprovado' : 'Reprovado';
    }
}
