
-- Tabela: Aluno
CREATE TABLE Alunos (
    aluno_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15),
    data_nascimento DATE NOT NULL,
    data_matricula DATE NOT NULL,
    status VARCHAR(20)
);

-- Tabela: Treinador
CREATE TABLE Treinadores (
    treinador_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15),
    especialidade VARCHAR(100),
    data_admissao DATE DEFAULT CURRENT_DATE
);

-- Tabela: Plano
CREATE TABLE Planos (
    plano_id SERIAL PRIMARY KEY,
    nome_aula VARCHAR(50) NOT NULL,
    descricao TEXT,
    valor NUMERIC(10, 2) NOT NULL,
    duracao_meses INT NOT NULL,
    ativo BOOLEAN
);

-- Tabela: Aulas
CREATE TABLE Aulas (
    aula_id SERIAL PRIMARY KEY,
    nome_aula VARCHAR(100) NOT NULL,
    descricao TEXT,
    horario TIME NOT NULL,
    data DATE NOT NULL,
    treinador_id INT REFERENCES Treinadores(treinador_id),
    capacidade INT NOT NULL,
    tipo_aula VARCHAR(100) NOT NULL
);

-- Tabela: Frequência
CREATE TABLE Frequencia (
    frequencia_id SERIAL PRIMARY KEY,
    aluno_id INT REFERENCES Alunos(aluno_id) ON DELETE CASCADE,
    aula_id INT REFERENCES Aulas(aula_id) ON DELETE CASCADE,
    data_frequencia DATE NOT NULL,
    presente BOOLEAN
);

-- Tabela: Pagamento
CREATE TABLE Pagamentos (
    pagamento_ID SERIAL PRIMARY KEY,
    aluno_id INT REFERENCES Alunos(aluno_id) ON DELETE CASCADE,
    plano_id INT REFERENCES Planos(plano_id) ON DELETE CASCADE,
    data_pagamento DATE NOT NULL,
    valor NUMERIC(10, 2) NOT NULL,
    status_pagamento VARCHAR(20)
);

-- Tabela: Evolução Física
CREATE TABLE Evolucao_Fisica (
    evolucao_id SERIAL PRIMARY KEY,
    aluno_id INT REFERENCES Alunos(aluno_id) ON DELETE CASCADE,
    data_registro DATE NOT NULL,
    peso NUMERIC(5, 2),
    cintura NUMERIC(5, 2),
    peito NUMERIC(5, 2),
    quadril NUMERIC(5, 2),
    observacoes TEXT
);

-- Tabela: Histórico de Treinos
CREATE TABLE Historico_Treinos (
    treino_id SERIAL PRIMARY KEY,
    aluno_id INT REFERENCES Alunos(aluno_id) ON DELETE CASCADE,
    data_treino DATE NOT NULL,
    tipo_treino VARCHAR(50) NOT NULL,
    descricao TEXT,
    duracao INT NOT NULL,
    intensidade VARCHAR(20)
);