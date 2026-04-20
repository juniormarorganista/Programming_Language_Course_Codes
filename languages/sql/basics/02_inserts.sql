INSERT INTO alunos (id, nome, cidade, idade) VALUES
(1, 'Ana', 'São Carlos', 22),
(2, 'Bruno', 'Brasília', 29),
(3, 'Carla', 'Londrina', 25),
(4, 'Diego', 'Maringá', 31),
(5, 'Eva', 'Formosa', 27);

INSERT INTO cursos (id, nome, categoria, carga_horaria, preco) VALUES
(1, 'Python Básico', 'programacao', 40, 199.90),
(2, 'SQL para Análise', 'dados', 30, 249.90),
(3, 'Frontend Essencial', 'web', 35, 219.90),
(4, 'Java Fundamentos', 'programacao', 45, 279.90);

INSERT INTO matriculas (id, aluno_id, curso_id, status, data_matricula) VALUES
(1, 1, 1, 'ativa', '2026-04-01'),
(2, 1, 2, 'concluida', '2026-03-10'),
(3, 2, 2, 'ativa', '2026-04-05'),
(4, 3, 3, 'ativa', '2026-04-06'),
(5, 4, 4, 'cancelada', '2026-04-02'),
(6, 5, 1, 'concluida', '2026-02-15');

INSERT INTO pagamentos (id, matricula_id, valor, forma_pagamento, pago_em) VALUES
(1, 1, 199.90, 'pix', '2026-04-01'),
(2, 2, 249.90, 'cartao', '2026-03-10'),
(3, 3, 249.90, 'boleto', '2026-04-05'),
(4, 4, 219.90, 'pix', '2026-04-06'),
(5, 6, 199.90, 'cartao', '2026-02-15');
