-- -----------------------------------------------------
-- Alteração da tabela `paciente`
-- -----------------------------------------------------

-- Relatório 1
SELECT p.nome AS Nome_Paciente, a.data_hora AS Data_Agendamento, a.procedimento
FROM paciente p
JOIN agendamento a ON p.cpf_paciente = a.cpf_paciente;

-- Relatório 2
SELECT p.nome, r.tratamento, r.prescricoes, r.data
FROM paciente p
JOIN registro_clinico r ON p.cpf_paciente = r.cpf_paciente
WHERE p.cpf_paciente = '123.456.789-00';

-- Relatório 3
SELECT p.nome, a.procedimento, a.data_hora
FROM agendamento a
JOIN paciente p ON a.cpf_paciente = p.cpf_paciente
WHERE a.data_hora = '2024-10-31 00:00:00';

-- Relatório 4
SELECT p.nome, SUM(f.valor_total) AS Faturamento_Total
FROM paciente p
JOIN faturamento f ON p.cpf_paciente = f.cpf_paciente
GROUP BY p.nome;

-- Relatório 5
SELECT f.nome AS Dentista, ae.data_atendimento, ae.descricao
FROM atendimento_emergencia ae
JOIN funcionario f ON ae.cpf_funcionario = f.cpf_funcionario;

-- Relatório 6
SELECT p.nome, s.nome_seguradora, s.numero_apolice, s.cobertura
FROM paciente p
JOIN seguro_saude s ON p.cpf_paciente = s.cpf_paciente;

-- Relatório 7
SELECT EXTRACT(MONTH FROM data_registro) AS Mes, SUM(valor) AS Total_Despesas
FROM receita_despesa
WHERE tipo = 'Despesa'
GROUP BY EXTRACT(MONTH FROM data_registro);

-- Relatório 8
SELECT f.nome AS Dentista, a.data_hora, a.procedimento
FROM funcionario f
JOIN agendamento a ON f.cpf_funcionario = a.cpf_funcionario
WHERE a.data_hora > CURRENT_DATE;

-- Relatório 9
SELECT l.nome_lab, l.contato
FROM lab_externo l;

-- Relatório 10
SELECT AVG(custo) AS Custo_Medio
FROM procedimento;

-- Relatório 11
SELECT nome, endereco, telefone, email
FROM fornecedor;

-- Relatório 12
SELECT p.nome, hl.id_procedimento
FROM paciente p
JOIN historico_lab hl ON hl.id_procedimento = p.cpf_paciente
WHERE p.cpf_paciente = '123.456.789-00';

-- Relatório 13
SELECT EXTRACT(MONTH FROM data_registro) AS Mes, SUM(valor) AS Total_Receitas
FROM receita_despesa
WHERE tipo = 'Receita'
GROUP BY EXTRACT(MONTH FROM data_registro);

-- Relatório 14
SELECT p.nome, COUNT(ae.id_emergencia) AS Numero_Atendimentos
FROM paciente p
JOIN atendimento_emergencia ae ON p.cpf_paciente = ae.cpf_paciente
GROUP BY p.nome
HAVING COUNT(ae.id_emergencia) > 1;

-- Relatório 15
SELECT nome, especializacao
FROM funcionario
WHERE cargo = 'Dentista';

-- Relatório 16
SELECT a.procedimento, SUM(f.valor_total) AS Total_Faturamento
FROM agendamento a
JOIN faturamento f ON a.cpf_paciente = f.cpf_paciente
GROUP BY a.procedimento;

-- Relatório 17
SELECT p.nome, a1.data_hora AS Data_Primeira_Consulta, a2.data_hora AS Data_Retorno
FROM paciente p
JOIN agendamento a1 ON p.cpf_paciente = a1.cpf_paciente
JOIN agendamento a2 ON p.cpf_paciente = a2.cpf_paciente
WHERE a2.data_hora BETWEEN a1.data_hora AND a1.data_hora + INTERVAL 30 DAY
AND a1.data_hora < a2.data_hora;

-- Relatório 18
SELECT p.nome, r.prescricoes
FROM paciente p
JOIN registro_clinico r ON p.cpf_paciente = r.cpf_paciente
WHERE p.cpf_paciente = '123.456.789-00';

-- Relatório 19
SELECT l.nome_lab, hl.id_procedimento
FROM lab_externo l
JOIN historico_lab hl ON l.id_requisicoes = hl.id_historico_requisicoes
WHERE l.id_requisicoes = 2;

-- Relatório 20
SELECT f.nome, COUNT(a.id_agendamento) AS Total_Consultas
FROM funcionario f
JOIN agendamento a ON f.cpf_funcionario = a.cpf_funcionario
WHERE f.cargo = 'Dentista'
GROUP BY f.nome;
