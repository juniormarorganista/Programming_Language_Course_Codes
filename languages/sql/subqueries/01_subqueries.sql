SELECT nome, preco
FROM cursos
WHERE preco > (
    SELECT AVG(preco)
    FROM cursos
)
ORDER BY preco DESC;

SELECT nome
FROM alunos
WHERE id IN (
    SELECT aluno_id
    FROM matriculas
    WHERE status = 'concluida'
)
ORDER BY nome;
