-- Scripts de DELETE
DELETE FROM seguro_saude WHERE "cpf_paciente" = '123.456.789-01';
DELETE FROM paciente WHERE "cpf" = '234.567.890-12';
DELETE FROM funcionario WHERE "cpf" = '987.654.321-01';
DELETE FROM registro_clinico WHERE "data" < '2024-11-01';
DELETE FROM seguro_saude WHERE "plano" = 'Antigo Plano';
DELETE FROM endereco_paciente WHERE "estado" = 'SP';
DELETE FROM paciente WHERE "data_nascimento" < '2000-01-01';
DELETE FROM funcionario WHERE "situacao" = 'Inativo';
DELETE FROM lab_externo WHERE "nome" LIKE 'Laboratório%';
DELETE FROM atendimento_emergencia WHERE "data" < '2024-10-01';
DELETE FROM historico_lab WHERE "observacoes" IS NULL;

-- Scripts de UPDATE
UPDATE paciente SET nome = 'Novo Nome' WHERE "cpf" = '345.678.901-23';
UPDATE funcionario SET nome = CONCAT("nome", ' (Atualizado)') WHERE "cpf" LIKE '987%';
UPDATE paciente SET telefone = '81-91234-5678' WHERE "cpf" = '567.890.123-45';
UPDATE paciente SET nome = 'Carlos Silva' WHERE "cpf" = '123.456.789-00';
UPDATE funcionario SET situacao = 'Ativo' WHERE "data_admissao" < '2023-01-01';
UPDATE paciente SET historico_saude_bucal = 'Nenhum histórico' WHERE "cpf" = '234.567.890-11';
UPDATE funcionario SET salario = salario * 1.10 WHERE "cargo" = 'Dentista';
UPDATE registro_clinico SET observacoes = 'Revisado em 2024' WHERE "data" = '2024-10-15';
UPDATE atendimento_emergencia SET status = 'Concluído' WHERE "data" < '2024-09-01';
UPDATE lab_externo SET nome = 'Novo Laboratório' WHERE "nome" = 'Laboratório Antigo';


