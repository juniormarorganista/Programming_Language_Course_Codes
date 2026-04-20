SELECT id, nome, cidade
FROM alunos
ORDER BY nome;

SELECT nome, categoria, preco
FROM cursos
WHERE preco >= 220
ORDER BY preco DESC;

SELECT status, COUNT(*) AS quantidade
FROM matriculas
GROUP BY status
ORDER BY quantidade DESC;
