SELECT
    a.nome AS aluno,
    c.nome AS curso,
    m.status,
    m.data_matricula
FROM matriculas AS m
INNER JOIN alunos AS a ON a.id = m.aluno_id
INNER JOIN cursos AS c ON c.id = m.curso_id
ORDER BY a.nome, c.nome;

SELECT
    a.nome AS aluno,
    p.valor,
    p.forma_pagamento,
    p.pago_em
FROM alunos AS a
INNER JOIN matriculas AS m ON m.aluno_id = a.id
LEFT JOIN pagamentos AS p ON p.matricula_id = m.id
ORDER BY a.nome, p.pago_em;
