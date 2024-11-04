-- Desabilita temporariamente as verificações de chave estrangeira
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Agendamento;
DROP TABLE IF EXISTS Atendimento_emergencia;
DROP TABLE IF EXISTS Compras;
DROP TABLE IF EXISTS Endereco_funcionario;
DROP TABLE IF EXISTS Endereco_paciente;
DROP TABLE IF EXISTS Faturamento;
DROP TABLE IF EXISTS Fornecedor;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Historico_lab;
DROP TABLE IF EXISTS Lab_externo;
DROP TABLE IF EXISTS Paciente;
DROP TABLE IF EXISTS Procedimento;
DROP TABLE IF EXISTS Receita_despesa;
DROP TABLE IF EXISTS Registro_clinico;
DROP TABLE IF EXISTS Seguro_saude;

DROP DATABASE IF EXISTS ClinicaOdontologica;

-- Habilita novamente as verificações de chave estrangeira
SET FOREIGN_KEY_CHECKS = 1;
