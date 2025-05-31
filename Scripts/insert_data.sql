-- Tabela Alunos

INSERT INTO Alunos (nome, email, telefone, data_nascimento, data_matricula, status)
VALUES
    ('João Silva', 'joao.silva@gmail.com', '11987654321', '2000-05-15', '2023-10-01', 'ativo'),
    ('Maria Oliveira', 'maria.oliveira@yahoo.com', '11976543210', '1995-07-22', '2023-08-15', 'ativo'),
    ('Carlos Pereira', 'carlos.pereira@outlook.com', '11998765432', '1988-12-10', '2022-03-01', 'inativo'),
    ('Ana Souza', 'ana.souza@hotmail.com', '11912345678', '1992-03-25', '2024-01-02', 'ativo'),
    ('Fernanda Lima', 'fernanda.lima@gmail.com', '11911223344', '1998-09-17', '2023-11-20', 'ativo');
    

-- Tabela Treinadores

INSERT INTO Treinadores (nome, email, telefone, especialidade, data_admissao)
VALUES
    ('Pedro Almeida', 'pedro.almeida@gmail.com', '11987654321', 'Musculação', '2023-05-10'),
    ('Fernanda Costa', 'fernanda.costa@yahoo.com', '11976543210', 'Yoga', '2022-08-15'),
    ('Lucas Pereira', 'lucas.pereira@outlook.com', '11998765432', 'Crossfit', '2024-01-02'),
    ('Maria Oliveira', 'maria.oliveira@gmail.com', '11912345678', 'Pilates', '2021-11-20'),
    ('Carlos Souza', 'carlos.souza@hotmail.com', '11911223344', 'Zumba', '2023-03-01');


-- Tabela Planos

INSERT INTO Planos (nome_aula, descricao, valor, duracao_meses, ativo)
VALUES
    ('Plano Básico', 'Acesso limitado a horários fora de pico.', 120.00, 1, TRUE),
    ('Plano Padrão', 'Acesso completo com aulas em grupo.', 150.00, 3, TRUE),
    ('Plano Premium', 'Acesso total com consultoria personalizada.', 200.00, 6, TRUE),
    ('Plano Corporativo', 'Plano para grupos empresariais.', 180.00, 12, FALSE),
    ('Plano Anual', 'Desconto especial para pagamento anual.', 1000.00, 12, TRUE);


-- Tabela Aulas

INSERT INTO Aulas (nome_aula, descricao, horario, data, treinador_id, capacidade, tipo_aula)
VALUES
    ('Yoga Matinal', 'Aula de yoga para relaxamento e flexibilidade.', '07:00', '2025-01-05', 1, 15, 'Relaxamento'),
    ('Crossfit Intenso', 'Treino de alta intensidade para força e resistência.', '18:00', '2025-01-06', 2, 20, 'Treinamento Funcional'),
    ('Zumba Dance', 'Aula de dança fitness com ritmos latinos.', '19:30', '2025-01-07', 3, 25, 'Dança'),
    ('Pilates Avançado', 'Treinamento avançado para postura e fortalecimento do core.', '08:00', '2025-01-08', 4, 10, 'Fortalecimento'),
    ('Spinning Cardio', 'Aula de ciclismo indoor para queima calórica intensa.', '06:30', '2025-01-09', 5, 30, 'Cardio');


-- Tabela Evolucao_fisica

INSERT INTO Evolucao_Fisica (aluno_id, data_registro, peso, cintura, peito, quadril, observacoes)
VALUES
    (1, '2025-01-01', 70.5, 85, 95, 100, 'Boa evolução nas medidas.'),
    (2, '2025-01-02', 68.0, 80, 92, 98, 'Redução significativa na cintura.'),
    (3, '2025-01-03', 90.2, 100, 110, 105, 'Foco no fortalecimento do core.'),
    (4, '2025-01-04', 75.3, 88, 96, 102, 'Estabilização de peso observada.'),
    (5, '2025-01-05', 65.0, 78, 88, 94, 'Excelente progresso geral.');


-- Tabela Frequencia

INSERT INTO Frequencia (aluno_id, aula_id, data_frequencia, presente)
VALUES
    (1, 1, '2025-01-02', TRUE),
    (2, 2, '2025-01-02', FALSE),
    (3, 3, '2025-01-03', TRUE),
    (4, 4, '2025-01-03', TRUE),
    (5, 5, '2025-01-04', FALSE);


-- Tabela Historico_treinos

INSERT INTO Historico_Treinos (aluno_id, data_treino, tipo_treino, descricao, duracao, intensidade)
VALUES
    (1, '2025-01-01', 'Cardio', 'Treino de corrida leve na esteira.', 30, 'Alta'),
    (2, '2025-01-02', 'Fortalecimento', 'Treino de musculação para pernas e glúteos.', 40, 'Media'),
    (3, '2025-01-03', 'Flexibilidade', 'Sessão de alongamentos e yoga.', 30, 'baixa'),
    (4, '2025-01-04', 'Resistência', 'Treino de circuito funcional.', 50, 'Alta'),
    (5, '2025-01-05', 'Dança', 'Aula de zumba para queima calórica.', 30, 'Media');


-- Tabela Pagamentos

INSERT INTO Pagamentos (aluno_id, plano_id, data_pagamento, valor, status_pagamento)
VALUES
    (1, 1, '2025-01-01', 120.00, 'Pago'),
    (2, 2, '2025-01-02', 150.00, 'Atrasado'),
    (3, 1, '2025-01-03', 120.00, 'Pago'),
    (4, 3, '2025-01-04', 200.00, 'Pago'),
    (5, 2, '2025-01-05', 150.00, 'Pendente');



