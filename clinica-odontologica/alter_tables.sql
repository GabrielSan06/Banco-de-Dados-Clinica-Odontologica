-- -----------------------------------------------------
-- Alteração da tabela `paciente`
-- -----------------------------------------------------

ALTER TABLE paciente 
ADD COLUMN email VARCHAR(100) AFTER historico_saude_bucal;

ALTER TABLE paciente 
MODIFY COLUMN telefone VARCHAR(15);

-- -----------------------------------------------------
-- Alteração da tabela `procedimento`
-- -----------------------------------------------------

-- Adicionando a coluna cargo a funcionário -- 
ALTER TABLE funcionario
ADD COLUMN cargo VARCHAR(35) AFTER especializacao;

ALTER TABLE procedimento 
ADD COLUMN preco DECIMAL(10, 2) AFTER descricao;

ALTER TABLE procedimento 
MODIFY COLUMN descricao VARCHAR(200);

-- -----------------------------------------------------
-- Alteração da tabela `lab_externo`
-- -----------------------------------------------------

ALTER TABLE lab_externo 
ADD COLUMN cnpj VARCHAR(18) AFTER nome_lab;

ALTER TABLE lab_externo 
MODIFY COLUMN contato VARCHAR(15);

-- -----------------------------------------------------
-- Alteração da tabela `atendimento_emergencia`
-- -----------------------------------------------------

ALTER TABLE atendimento_emergencia 
ADD COLUMN observacao TEXT AFTER data_atendimento;

ALTER TABLE atendimento_emergencia
ADD COLUMN tipo_emergencia VARCHAR(50) AFTER data_atendimento;

-- -----------------------------------------------------
-- Alteração da tabela `agendamento`
-- -----------------------------------------------------

ALTER TABLE agendamento
CHANGE COLUMN data data_hora DATETIME;

ALTER TABLE agendamento 
ADD COLUMN status ENUM('agendado', 'confirmado', 'cancelado') NOT NULL DEFAULT 'agendado' AFTER data_hora;


-- -----------------------------------------------------
-- Alteração da tabela `registro_clinico`
-- -----------------------------------------------------

ALTER TABLE registro_clinico
ADD COLUMN observacoes TEXT AFTER recomendacoes;

ALTER TABLE registro_clinico 
ADD COLUMN data_registro DATE AFTER observacoes;

ALTER TABLE registro_clinico 
MODIFY COLUMN observacoes VARCHAR(255);

-- -----------------------------------------------------
-- Alteração da tabela `faturamento`
-- -----------------------------------------------------

ALTER TABLE faturamento 
ADD COLUMN forma_pagamento ENUM('dinheiro', 'cartão', 'transferência') AFTER valor_total;

ALTER TABLE faturamento
DROP COLUMN data;

ALTER TABLE faturamento
ADD COlUMN data_faturamento DATE;

ALTER TABLE faturamento 
CHANGE COLUMN data_faturamento data_emissao DATE;

-- -----------------------------------------------------
-- Alteração da tabela `seguro_saude`
-- -----------------------------------------------------


ALTER TABLE seguro_saude 
ADD COLUMN tipo_seguro VARCHAR(50) AFTER numero_apolice;

ALTER TABLE seguro_saude 
ADD COLUMN nome_plano VARCHAR(50) AFTER tipo_seguro;

ALTER TABLE seguro_saude
ADD COLUMN validade INT;

ALTER TABLE seguro_saude 
MODIFY COLUMN validade DATE AFTER cobertura;
