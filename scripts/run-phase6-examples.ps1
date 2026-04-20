$ErrorActionPreference = "Stop"

Write-Host "=== PHP ===" -ForegroundColor Cyan
if (Get-Command php -ErrorAction SilentlyContinue) {
    php .\languages\php\basics\01_hello.php
    php .\languages\php\oop\02_student_demo.php
} else {
    Write-Host "PHP não encontrado no PATH. Pulando." -ForegroundColor Yellow
}

Write-Host "=== Java ===" -ForegroundColor Cyan
if (Get-Command javac -ErrorAction SilentlyContinue) {
    Push-Location .\languages\java\basics
    javac 01_HelloWorld.java
    java HelloWorld
    Pop-Location

    Push-Location .\languages\java\oop
    javac 01_Student.java 02_StudentDemo.java
    java StudentDemo
    Pop-Location
} else {
    Write-Host "Java não encontrado no PATH. Pulando." -ForegroundColor Yellow
}

Write-Host "=== Frontend / Node ===" -ForegroundColor Cyan
if (Get-Command node -ErrorAction SilentlyContinue) {
    node .\languages\frontend\javascript\01_array_methods.js
} else {
    Write-Host "Node não encontrado no PATH. Pulando." -ForegroundColor Yellow
}

Write-Host "Smoke tests da fase 6 concluídos." -ForegroundColor Green
