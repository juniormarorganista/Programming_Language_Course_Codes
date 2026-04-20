<?php
require_once __DIR__ . '/01_student.php';

$student = new Student('Ana', 8.7);
echo $student->name . ' -> ' . $student->status() . PHP_EOL;
