SELECT
    c.categoria,
    COUNT(*) AS total_cursos,
    AVG(c.preco) AS preco_medio,
    MAX(c.preco) AS maior_preco
FROM cursos AS c
GROUP BY c.categoria
ORDER BY c.categoria;

SELECT
    c.nome AS curso,
    COUNT(m.id) AS total_matriculas
FROM cursos AS c
LEFT JOIN matriculas AS m ON m.curso_id = c.id
GROUP BY c.id, c.nome
HAVING COUNT(m.id) >= 1
ORDER BY total_matriculas DESC, c.nome;
