-- -----------------------------------------------------
-- Views 
-- -----------------------------------------------------

-- 1. View para listar todos os agendamentos de um paciente específico.
CREATE VIEW vw_agendamentos_paciente AS
SELECT p.nome AS Nome_Paciente, a.data_hora AS Data_Agendamento, a.procedimento
FROM paciente p
JOIN agendamento a ON p.cpf_paciente = a.cpf_paciente;

-- 2. View para consultar o histórico clínico completo de um paciente.
CREATE VIEW vw_historico_clinico_paciente AS
SELECT p.nome AS Nome_Paciente, r.tratamento, r.prescricoes, r.data AS Data_Registro
FROM paciente p
JOIN registro_clinico r ON p.cpf_paciente = r.cpf_paciente;

-- 3. View para listar os pacientes com seguros de saúde.
CREATE VIEW vw_pacientes_com_seguro AS
SELECT p.nome AS Nome_Paciente, s.nome_seguradora, s.numero_apolice, s.cobertura
FROM paciente p
JOIN seguro_saude s ON p.cpf_paciente = s.cpf_paciente;

-- 4. View para listar os dentistas e seus agendamentos futuros.
CREATE VIEW vw_agendamentos_futuros_dentista AS
SELECT f.nome AS Dentista, a.data_hora AS Data_Agendamento, a.procedimento
FROM funcionario f
JOIN agendamento a ON f.cpf_funcionario = a.cpf_funcionario
WHERE a.data_hora > CURRENT_DATE;

-- 5. View para listar as receitas e despesas mensais da clínica.
CREATE VIEW vw_receitas_despesas_mensais AS
SELECT EXTRACT(MONTH FROM data_registro) AS Mes, tipo, SUM(valor) AS Total
FROM receita_despesa
GROUP BY Mes, tipo;

-- 6. View para listar os dentistas e suas especializações.
CREATE VIEW vw_dentistas_especializacoes AS
SELECT nome, especializacao
FROM funcionario
WHERE cargo = 'Dentista';

-- 7. View para mostrar o total de faturamento da clínica por procedimento.
CREATE VIEW vw_faturamento_por_procedimento AS
SELECT a.procedimento, SUM(f.valor_total) AS Total_Faturamento
FROM agendamento a
JOIN faturamento f ON a.cpf_paciente = f.cpf_paciente
GROUP BY a.procedimento;

-- 8. View para listar todos os fornecedores de insumos.
CREATE VIEW vw_fornecedores_insumos AS
SELECT nome, endereco, telefone, email
FROM fornecedor;

-- 9. View para consultar o custo médio dos procedimentos.
CREATE VIEW vw_custo_medio_procedimentos AS
SELECT AVG(custo) AS Custo_Medio
FROM procedimento;

-- 10. View para listar o histórico de procedimentos laboratoriais.
CREATE VIEW vw_historico_lab_paciente AS
SELECT p.nome AS Nome_Paciente, hl.id_procedimento, l.nome_lab AS Laboratorio
FROM paciente p
JOIN historico_lab hl ON hl.id_procedimento = p.cpf_paciente
JOIN lab_externo l ON hl.id_historico_requisicoes = l.id_requisicoes;
