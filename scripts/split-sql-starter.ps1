$ErrorActionPreference = "Stop"

$base = "languages\sql\basics"
New-Item -ItemType Directory -Force -Path $base | Out-Null

@"
-- Objetivo: criar a estrutura inicial do banco
-- Como executar: sqlite3 estudo.db < .\languages\sql\basics\01_schema.sql

CREATE TABLE IF NOT EXISTS alunos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    linguagem_favorita TEXT NOT NULL,
    nivel TEXT NOT NULL
);
"@ | Set-Content -Encoding UTF8 "$base\01_schema.sql"

@"
-- Objetivo: popular a tabela inicial
-- Como executar: sqlite3 estudo.db < .\languages\sql\basics\02_inserts.sql

INSERT INTO alunos (nome, linguagem_favorita, nivel) VALUES
('Ana', 'Python', 'iniciante'),
('Bruno', 'C', 'intermediario'),
('Carla', 'Java', 'iniciante');
"@ | Set-Content -Encoding UTF8 "$base\02_inserts.sql"

@"
-- Objetivo: praticar consultas basicas
-- Como executar: sqlite3 -header -column estudo.db < .\languages\sql\basics\03_queries.sql

SELECT * FROM alunos;
"@ | Set-Content -Encoding UTF8 "$base\03_queries.sql"
