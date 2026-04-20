DROP VIEW IF EXISTS vw_resumo_matriculas;

CREATE VIEW vw_resumo_matriculas AS
SELECT
    a.nome AS aluno,
    c.nome AS curso,
    c.categoria,
    m.status,
    p.valor,
    p.forma_pagamento
FROM matriculas AS m
INNER JOIN alunos AS a ON a.id = m.aluno_id
INNER JOIN cursos AS c ON c.id = m.curso_id
LEFT JOIN pagamentos AS p ON p.matricula_id = m.id;

SELECT *
FROM vw_resumo_matriculas
ORDER BY aluno, curso;
