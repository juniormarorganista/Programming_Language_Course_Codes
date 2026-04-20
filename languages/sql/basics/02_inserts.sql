-- Objetivo: inserir dados de teste na base.
-- Como executar:
--   sqlite3 estudo.db < .\languages\sql\basics\02_inserts.sql
-- Conceitos treinados: INSERT INTO.
-- Próximo exercício: 03_queries.sql

INSERT INTO alunos (id, nome, cidade) VALUES
(1, 'Ana', 'Maringá'),
(2, 'Bruno', 'São Carlos'),
(3, 'Carla', 'Formosa');

INSERT INTO cursos (id, nome, carga_horaria) VALUES
(1, 'Python', 40),
(2, 'SQL', 30),
(3, 'Java', 50);

INSERT INTO matriculas (id, aluno_id, curso_id, nota) VALUES
(1, 1, 1, 8.5),
(2, 1, 2, 9.0),
(3, 2, 1, 7.8),
(4, 2, 3, 8.1),
(5, 3, 2, 9.5);
