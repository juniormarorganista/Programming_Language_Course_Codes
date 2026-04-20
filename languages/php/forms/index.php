<?php
$nome = $_POST['nome'] ?? '';
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Formulário PHP</title>
</head>
<body>
    <h1>Exemplo de formulário</h1>
    <form method="post">
        <label>Nome: <input type="text" name="nome"></label>
        <button type="submit">Enviar</button>
    </form>

    <?php if ($nome !== ''): ?>
        <p>Olá, <?php echo htmlspecialchars($nome, ENT_QUOTES, 'UTF-8'); ?>.</p>
    <?php endif; ?>
</body>
</html>
