-- -----------------------------------------------------
-- Criação do banco de dados
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS ClinicaOdontologica;
USE ClinicaOdontologica;

-- -----------------------------------------------------
-- Table `paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS paciente (
  cpf_paciente VARCHAR(15) NOT NULL,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE NOT NULL,
  telefone VARCHAR(15) NOT NULL,
  historico_saude_bucal TEXT,
  PRIMARY KEY (cpf_paciente)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS endereco_paciente (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    cpf_paciente VARCHAR(14) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,
    complemento VARCHAR(50),
    FOREIGN KEY (cpf_paciente) REFERENCES paciente(cpf_paciente)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `funcionário`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS funcionario (
  cpf_funcionario VARCHAR(15) NOT NULL,
  nome VARCHAR(100) NOT NULL,
  especializacao VARCHAR(45),
  registro_profissional VARCHAR(20),
  telefone VARCHAR(15) NOT NULL,
  PRIMARY KEY (cpf_funcionario)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS endereco_funcionario (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    cpf_funcionario VARCHAR(14) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,
    complemento VARCHAR(50),
    FOREIGN KEY (cpf_funcionario) REFERENCES funcionario(cpf_funcionario)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `procedimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS procedimento (
  id_procedimento INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT NOT NULL,
  custo DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (id_procedimento)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `lab_externo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS lab_externo (
  id_requisicoes INT NOT NULL AUTO_INCREMENT,
  nome_lab VARCHAR(100) NOT NULL,
  contato VARCHAR(45) NOT NULL,
  historico_trabalhos TEXT,
  PRIMARY KEY (id_requisicoes)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `atendimento_emergencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS atendimento_emergencia (
  id_emergencia INT NOT NULL AUTO_INCREMENT,
  data_atendimento DATETIME NOT NULL,
  descricao TEXT NOT NULL,
  cpf_paciente VARCHAR(15) NOT NULL,
  cpf_funcionario VARCHAR(15) NOT NULL,
  PRIMARY KEY (id_emergencia),
  INDEX cpf_paciente_idx (cpf_paciente),
  INDEX cpf_funcionario_idx (cpf_funcionario),
  CONSTRAINT fk_emergencia_paciente
    FOREIGN KEY (cpf_paciente)
    REFERENCES paciente (cpf_paciente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_emergencia_funcionario
    FOREIGN KEY (cpf_funcionario)
    REFERENCES funcionario (cpf_funcionario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `agendamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS agendamento (
  id_agendamento INT NOT NULL AUTO_INCREMENT,
  data DATETIME NOT NULL,
  procedimento VARCHAR(45) NOT NULL,
  situacao_paciente VARCHAR(45) NOT NULL,
  cpf_paciente VARCHAR(15) NOT NULL,
  cpf_funcionario VARCHAR(15) NOT NULL,
  PRIMARY KEY (id_agendamento),
  INDEX cpf_paciente_idx (cpf_paciente),
  INDEX cpf_funcionario_idx (cpf_funcionario),
  CONSTRAINT fk_agendamento_paciente
    FOREIGN KEY (cpf_paciente)
    REFERENCES paciente (cpf_paciente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_agendamento_funcionario
    FOREIGN KEY (cpf_funcionario)
    REFERENCES funcionario (cpf_funcionario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `registro_clinico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS registro_clinico (
  id_registro INT NOT NULL AUTO_INCREMENT,
  data DATETIME NOT NULL,
  diagnostico TEXT NOT NULL,
  tratamento TEXT NOT NULL,
  prescricoes TEXT NOT NULL,
  recomendacoes TEXT NULL,
  cpf_paciente VARCHAR(15) NOT NULL,
  cpf_funcionario VARCHAR(15) NOT NULL,
  id_procedimento INT NOT NULL,
  PRIMARY KEY (id_registro),
  CONSTRAINT fk_registro_paciente
    FOREIGN KEY (cpf_paciente)
    REFERENCES paciente (cpf_paciente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_registro_funcionario
    FOREIGN KEY (cpf_funcionario)
    REFERENCES funcionario (cpf_funcionario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_registro_procedimento
    FOREIGN KEY (id_procedimento)
    REFERENCES procedimento (id_procedimento)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `faturamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS faturamento (
  id_faturamento INT NOT NULL AUTO_INCREMENT,
  data DATETIME NOT NULL,
  metodo_pagamento VARCHAR(45) NOT NULL,
  valor_total DECIMAL(6,2) NOT NULL,
  cpf_paciente VARCHAR(15) NOT NULL,
  PRIMARY KEY (id_faturamento),
  CONSTRAINT fk_faturamento_paciente
    FOREIGN KEY (cpf_paciente)
    REFERENCES paciente (cpf_paciente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `seguro_saude`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS seguro_saude (
  id_seguro_saude INT NOT NULL AUTO_INCREMENT,
  nome_seguradora VARCHAR(90) NOT NULL,
  numero_apolice VARCHAR(45) NOT NULL,
  cobertura VARCHAR(45) NOT NULL,
  cpf_paciente VARCHAR(15) NOT NULL,
  id_faturamento INT NOT NULL,
  PRIMARY KEY (id_seguro_saude),
  INDEX cpf_paciente_idx (cpf_paciente),
  CONSTRAINT fk_seguro_paciente
    FOREIGN KEY (cpf_paciente)
    REFERENCES paciente (cpf_paciente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_seguro_faturamento
    FOREIGN KEY (id_faturamento)
    REFERENCES faturamento (id_faturamento)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `historico_lab`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS historico_lab (
  id_procedimento INT NOT NULL,
  id_historico_requisicoes INT NOT NULL,
  PRIMARY KEY (id_procedimento, id_historico_requisicoes),
  CONSTRAINT fk_historico_procedimento
    FOREIGN KEY (id_procedimento)
    REFERENCES procedimento (id_procedimento)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_historico_lab_requisicoes
    FOREIGN KEY (id_historico_requisicoes)
    REFERENCES lab_externo (id_requisicoes)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS fornecedor (
  id_fornecedor INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  endereco TEXT NOT NULL,
  telefone VARCHAR(15),
  email VARCHAR(100),
  PRIMARY KEY (id_fornecedor)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS receita_despesa (
  id_receita_despesa INT NOT NULL,
  tipo VARCHAR(45) NOT NULL,
  descricao TEXT NOT NULL,
  valor DECIMAL(7,2) NOT NULL,
  data_registro DATETIME NOT NULL,
  id_fornecedor INT NOT NULL,
  PRIMARY KEY (id_receita_despesa),
  UNIQUE INDEX id_receita_despesa_UNIQUE (id_receita_despesa ASC) VISIBLE,
  UNIQUE INDEX id_fornecedor_UNIQUE (id_fornecedor ASC) VISIBLE,
  CONSTRAINT id_fornecedor
    FOREIGN KEY (id_fornecedor)
    REFERENCES fornecedor (id_fornecedor)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION) ENGINE = InnoDB;

SELECT * FROM paciente;
