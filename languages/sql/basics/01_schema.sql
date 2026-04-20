-- Objetivo: criar uma base simples para praticar SQL.
-- Como executar:
--   sqlite3 estudo.db < .\languages\sql\basics\01_schema.sql
-- Conceitos treinados: CREATE TABLE, chaves primária e estrangeira.
-- Próximo exercício: 02_inserts.sql

DROP TABLE IF EXISTS matriculas;
DROP TABLE IF EXISTS cursos;
DROP TABLE IF EXISTS alunos;

CREATE TABLE alunos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cidade TEXT NOT NULL
);

CREATE TABLE cursos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    carga_horaria INTEGER NOT NULL
);

CREATE TABLE matriculas (
    id INTEGER PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    curso_id INTEGER NOT NULL,
    nota REAL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);
