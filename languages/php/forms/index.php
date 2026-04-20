<?php
/*
Objetivo: mostrar um formulário HTML simples processado com PHP.
Como executar: php -S localhost:8000 -t .\languages\php\forms
Conceitos treinados: formulário, método POST, processamento básico.
Próximo exercício: validar campos e sanitizar entrada.
*/

$nome = $_POST["nome"] ?? "";
$mensagem = "";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $nomeLimpo = trim($nome);
    if ($nomeLimpo === "") {
        $mensagem = "Digite um nome antes de enviar.";
    } else {
        $mensagem = "Olá, " . htmlspecialchars($nomeLimpo) . "! Formulário recebido com sucesso.";
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Formulário PHP</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 2rem; }
        form { display: grid; gap: 0.75rem; max-width: 420px; }
        input, button { padding: 0.6rem; }
        .resultado { margin-top: 1rem; font-weight: bold; }
    </style>
</head>
<body>
    <h1>Primeiro formulário em PHP</h1>

    <form method="post">
        <label for="nome">Seu nome:</label>
        <input type="text" name="nome" id="nome" value="<?= htmlspecialchars($nome) ?>">
        <button type="submit">Enviar</button>
    </form>

    <?php if ($mensagem !== ""): ?>
        <p class="resultado"><?= $mensagem ?></p>
    <?php endif; ?>
</body>
</html>
