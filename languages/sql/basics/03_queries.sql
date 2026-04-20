-- Objetivo: praticar consultas básicas e joins.
-- Como executar:
--   sqlite3 estudo.db < .\languages\sql\basics\03_queries.sql
-- Conceitos treinados: SELECT, WHERE, ORDER BY, JOIN, AVG.
-- Próximo exercício: agregações e subqueries.

-- Lista de alunos
SELECT * FROM alunos;

-- Cursos com carga horária maior que 35
SELECT nome, carga_horaria
FROM cursos
WHERE carga_horaria > 35
ORDER BY carga_horaria DESC;

-- Matrículas com join
SELECT
    a.nome AS aluno,
    c.nome AS curso,
    m.nota
FROM matriculas m
JOIN alunos a ON a.id = m.aluno_id
JOIN cursos c ON c.id = m.curso_id
ORDER BY m.nota DESC;

-- Média por curso
SELECT
    c.nome AS curso,
    AVG(m.nota) AS media_notas
FROM matriculas m
JOIN cursos c ON c.id = m.curso_id
GROUP BY c.nome
ORDER BY media_notas DESC;
