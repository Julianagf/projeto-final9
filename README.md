# Sistema escolhido:

### 2. Sistema de Controle de Academia

**Descrição**: Controle de alunos, planos de assinatura e frequência nas aulas.
**Entidades Principais**: Aluno, Treinador, Plano, Aulas, Frequência, Pagamento.
**Funcionalidades Extras**: Evolução física (peso, medidas), histórico de treinos.

Consultas realizadas:

1 - Consultar todos os alunos com seus planos e pagamentos.

SELECT a.nome AS Nome_Aluno,
	   p.nome_aula AS Periodicidade,
	   pa.data_pagamento,
	   pa.valor
FROM alunos a
JOIN pagamentos pa ON a.aluno_id = pa.aluno_id
JOIN planos p ON pa.aluno_id = p.plano_id
ORDER BY pa.valor DESC;

2 - Consultar a frequência de um aluno específico.

SELECT a.nome AS aluno_nome, 
       f.data_frequencia, 
       au.nome_aula
FROM Frequencia f
JOIN alunos a ON f.aluno_id = a.aluno_id
JOIN aulas au ON f.aula_id = au.aula_id
WHERE f.aluno_id = 1;

3 - Consultar evolução física de um aluno.

SELECT a.nome AS aluno_nome, 
       ef.data_registro, 
       ef.peso, 
       ef.cintura, 
       ef.peito, 
       ef.quadril, 
       ef.observacoes
FROM Evolucao_Fisica ef
JOIN Alunos a ON ef.aluno_id = a.aluno_id
WHERE a.aluno_id = 1
ORDER BY ef.data_registro DESC;