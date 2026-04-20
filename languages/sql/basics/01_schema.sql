PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS pagamentos;
DROP TABLE IF EXISTS matriculas;
DROP TABLE IF EXISTS cursos;
DROP TABLE IF EXISTS alunos;

CREATE TABLE alunos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cidade TEXT NOT NULL,
    idade INTEGER NOT NULL CHECK (idade >= 0)
);

CREATE TABLE cursos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    carga_horaria INTEGER NOT NULL CHECK (carga_horaria > 0),
    preco REAL NOT NULL CHECK (preco >= 0)
);

CREATE TABLE matriculas (
    id INTEGER PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    curso_id INTEGER NOT NULL,
    status TEXT NOT NULL CHECK (status IN ('ativa', 'concluida', 'cancelada')),
    data_matricula TEXT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE pagamentos (
    id INTEGER PRIMARY KEY,
    matricula_id INTEGER NOT NULL,
    valor REAL NOT NULL CHECK (valor >= 0),
    forma_pagamento TEXT NOT NULL,
    pago_em TEXT NOT NULL,
    FOREIGN KEY (matricula_id) REFERENCES matriculas(id)
);
