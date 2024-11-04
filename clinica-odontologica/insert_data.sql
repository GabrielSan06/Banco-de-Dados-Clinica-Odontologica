INSERT INTO paciente (cpf_paciente, nome, data_nascimento, telefone, historico_saude_bucal) VALUES
('123.456.789-00', 'Alice Silva', '1995-06-15', '(81) 91234-5678', 'Nenhum histórico.'),
('234.567.890-11', 'Bruno Oliveira', '1988-03-22', '(81) 92345-6789', 'Aparelho dentário.'),
('345.678.901-22', 'Carla Souza', '2001-11-30', '(81) 93456-7890', 'Tratamento de canal.'),
('456.789.012-33', 'Daniel Almeida', '1975-09-10', '(81) 94567-8901', 'Limpeza dental regular.'),
('567.890.123-44', 'Eduarda Costa', '1990-12-25', '(81) 95678-9012', 'Nenhum histórico.'),
('678.901.234-55', 'Fernando Lima', '1985-01-05', '(81) 96789-0123', 'Extração de dente.'),
('789.012.345-66', 'Gabriela Santos', '1999-08-14', '(81) 97890-1234', 'Tratamento ortodontico.'),
('890.123.456-77', 'Henrique Mendes', '2003-05-20', '(81) 98901-2345', 'Acompanhamento periódico.'),
('901.234.567-88', 'Isabella Rocha', '1992-04-18', '(81) 99012-3456', 'Cárie dental.'),
('012.345.678-99', 'João Pereira', '1983-07-21', '(81) 99123-4567', 'Nenhum histórico.'),
('123.654.789-00', 'Karina Ferreira', '1997-10-13', '(81) 91234-5678', 'Limpeza dental regular.'),
('234.765.890-11', 'Lucas Martins', '1986-02-28', '(81) 92345-6789', 'Tratamento de gengivite.'),
('345.876.901-22', 'Mariana Pires', '2002-09-06', '(81) 93456-7890', 'Aparelho dentário.'),
('456.987.012-33', 'Nicolas Gomes', '1991-05-12', '(81) 94567-8901', 'Nenhum histórico.'),
('567.098.123-44', 'Olivia Lima', '1978-11-29', '(81) 95678-9012', 'Extração de dente.'),
('678.109.234-55', 'Paulo Santos', '1993-03-15', '(81) 96789-0123', 'Tratamento ortodontico.'),
('789.210.345-66', 'Quiteria Dias', '1989-07-19', '(81) 97890-1234', 'Cárie dental.'),
('890.321.456-77', 'Rafael Almeida', '1996-04-07', '(81) 98901-2345', 'Acompanhamento periódico.'),
('901.432.567-88', 'Sofia Costa', '1987-08-25', '(81) 99012-3456', 'Tratamento de canal.'),
('012.543.678-99', 'Tiago Rocha', '1984-01-10', '(81) 99123-4567', 'Nenhum histórico.'),
('123.654.321-00', 'Ursula Torres' , '1994-06-20', '(81) 91234-5678', 'Limpeza dental regular.'),
('234.765.432-11', 'Vinicius Ferreira', '1998-10-30', '(81) 92345-6789', 'Tratamento de gengivite.'),
('345.876.543-22', 'Yasmin Silva', '2000-12-11', '(81) 93456-7890', 'Aparelho dentário.'),
('456.987.654-33', 'Zé Carlos', '1982-05-16', '(81) 94567-8901', 'Extração de dente.'),
('567.098.765-44', 'Aline Santos', '1988-03-21', '(81) 95678-9012', 'Cárie dental.'),
('678.109.876-55', 'Bruno Oliveira', '1991-07-14', '(81) 96789-0123', 'Tratamento ortodontico.'),
('789.210.987-66', 'Claudia Ferreira', '1995-01-30', '(81) 97890-1234', 'Nenhum histórico.'),
('890.321.098-77', 'Diego Almeida', '1992-02-25', '(81) 98901-2345', 'Limpeza dental regular.'),
('901.432.109-88', 'Fernanda Pires', '1980-08-05', '(81) 99012-3456', 'Tratamento de canal.'),
('012.543.210-99', 'Gabriel Lima', '1979-11-15', '(81) 99123-4567', 'Acompanhamento periódico.'),
('123.456.789-01', 'Helena Souza', '2003-04-20', '(81) 91234-5678', 'Cárie dental.'),
('234.567.890-12', 'Igor Santos', '1986-12-10', '(81) 92345-6789', 'Nenhum histórico.'),
('345.678.901-23', 'Júlia Costa', '1994-05-30', '(81) 93456-7890', 'Tratamento de gengivite.'),
('456.789.012-34', 'Luana Ferreira', '1990-09-03', '(81) 94567-8901', 'Aparelho dentário.'),
('567.890.123-45', 'Marcelo Almeida', '1988-01-22', '(81) 95678-9012', 'Tratamento ortodontico.'),
('678.901.234-56', 'Natália Rocha', '2002-03-28', '(81) 96789-0123', 'Extração de dente.'),
('789.012.345-67', 'Otávio Lima', '1993-10-10', '(81) 97890-1234', 'Nenhum histórico.'),
('890.123.456-78', 'Patrícia Dias', '1985-04-17', '(81) 98901-2345', 'Limpeza dental regular.'),
('901.234.567-89', 'Ronaldo Santos', '1976-06-05', '(81) 99012-3456', 'Acompanhamento periódico.'),
('012.345.678-90', 'Samantha Nunes', '1999-09-29', '(81) 99123-4567', 'Tratamento de canal.');

INSERT INTO endereco_paciente (cep, rua, numero, cidade, estado, bairro, complemento, cpf_paciente) VALUES
('50000-001', 'Rua do Sol', '123', 'Recife', 'PE', 'Boa Vista', NULL, '123.456.789-00'),
('50000-002', 'Av. Norte', '456', 'Recife', 'PE', 'Rosarinho', NULL, '234.567.890-11'),
('50000-003', 'Rua da Aurora', '789', 'Recife', 'PE', 'Santo Amaro', 'Casa 2', '345.678.901-22'),
('50000-004', 'Rua do Futuro', '321', 'Recife', 'PE', 'Graças', 'Bloco B', '456.789.012-33'),
('50000-005', 'Av. Recife', '654', 'Recife', 'PE', 'Imbiribeira', NULL, '567.890.123-44'),
('50000-006', 'Rua das Flores', '987', 'Recife', 'PE', 'Casa Amarela', NULL, '678.901.234-55'),
('50000-007', 'Rua do Espinheiro', '432', 'Recife', 'PE', 'Espinheiro', 'Apto 302', '789.012.345-66'),
('50000-008', 'Av. Beira Mar', '876', 'Recife', 'PE', 'Piedade', 'Cobertura', '890.123.456-77'),
('50000-009', 'Rua da Harmonia', '123', 'Recife', 'PE', 'Casa Forte', NULL, '901.234.567-88'),
('50000-010', 'Rua Bom Pastor', '456', 'Recife', 'PE', 'Areias', 'Fundos', '012.345.678-99'),
('50000-011', 'Rua da Amizade', '789', 'Recife', 'PE', 'Várzea', 'Galpão', '123.654.789-00'),
('50000-012', 'Av. Mascarenhas de Moraes', '321', 'Recife', 'PE', 'Imbiribeira', NULL, '234.765.890-11'),
('50000-013', 'Rua do Progresso', '654', 'Recife', 'PE', 'Cordeiro', 'Apto 101', '345.876.901-22'),
('50000-014', 'Av. Rosa e Silva', '987', 'Recife', 'PE', 'Aflitos', NULL, '456.987.012-33'),
('50000-015', 'Rua Padre Roma', '432', 'Recife', 'PE', 'Casa Amarela', 'Loja 2', '567.098.123-44'),
('50000-016', 'Av. Domingos Ferreira', '876', 'Recife', 'PE', 'Boa Viagem', NULL, '678.109.234-55'),
('50000-017', 'Rua Barão de Souza Leão', '123', 'Recife', 'PE', 'Boa Viagem', 'Casa 5', '789.210.345-66'),
('50000-018', 'Rua do Imperador', '456', 'Recife', 'PE', 'Santo Antônio', NULL, '890.321.456-77'),
('50000-019', 'Rua da Glória', '789', 'Recife', 'PE', 'Soledade', 'Bloco C', '901.432.567-88'),
('50000-020', 'Av. Conselheiro Aguiar', '321', 'Recife', 'PE', 'Boa Viagem', 'Apto 102', '012.543.678-99'),
('50000-021', 'Rua do Príncipe', '654', 'Recife', 'PE', 'Boa Vista', 'Sobreloja', '123.654.321-00'),
('50000-022', 'Rua da Saudade', '987', 'Recife', 'PE', 'Santo Amaro', NULL, '234.765.432-11'),
('50000-023', 'Av. Caxangá', '432', 'Recife', 'PE', 'Cordeiro', 'Apto 204', '345.876.543-22'),
('50000-024', 'Rua Barão de Itamaracá', '876', 'Recife', 'PE', 'Aflitos', NULL, '456.987.654-33'),
('50000-025', 'Rua das Creoulas', '123', 'Recife', 'PE', 'Encruzilhada', 'Casa 1', '567.098.765-44'),
('50000-026', 'Rua José Bonifácio', '456', 'Recife', 'PE', 'Boa Vista', NULL, '678.109.876-55'),
('50000-027', 'Rua da Moeda', '789', 'Recife', 'PE', 'Recife Antigo', 'Apto 301', '789.210.987-66'),
('50000-028', 'Av. Marechal Mascarenhas', '321', 'Recife', 'PE', 'Madalena', NULL, '890.321.098-77'),
('50000-029', 'Rua Padre Anchieta', '654', 'Recife', 'PE', 'Cajueiro', 'Bloco A', '901.432.109-88'),
('50000-030', 'Rua Gervásio Pires', '987', 'Recife', 'PE', 'Boa Vista', 'Sala 5', '012.543.210-99'),
('50000-031', 'Av. Visconde de Suassuna', '432', 'Recife', 'PE', 'Santo Amaro', NULL, '123.456.789-01'),
('50000-032', 'Rua das Fronteiras', '876', 'Recife', 'PE', 'Cabanga', 'Galpão 3', '234.567.890-12'),
('50000-033', 'Rua Desembargador Góis', '123', 'Recife', 'PE', 'Madalena', 'Casa Térrea', '345.678.901-23'),
('50000-034', 'Rua Dom Bosco', '456', 'Recife', 'PE', 'Boa Vista', 'Casa 12', '456.789.012-34'),
('50000-035', 'Rua Benfica', '789', 'Recife', 'PE', 'Madalena', NULL, '567.890.123-45'),
('50000-036', 'Rua João de Barros', '321', 'Recife', 'PE', 'Soledade', 'Loja 4', '678.901.234-56'),
('50000-037', 'Rua do Hospício', '654', 'Recife', 'PE', 'Boa Vista', NULL, '789.012.345-67'),
('50000-038', 'Rua Joaquim Nabuco', '987', 'Recife', 'PE', 'Torre', 'Apto 203', '890.123.456-78'),
('50000-039', 'Rua Velha', '432', 'Recife', 'PE', 'Encruzilhada', NULL, '901.234.567-89'),
('50000-040', 'Av. Dois Rios', '876', 'Recife', 'PE', 'Dois Irmãos', 'Bloco D', '012.345.678-90');

INSERT INTO funcionario (cpf_funcionario, nome, cargo, especializacao, registro_profissional, telefone) VALUES
('123.456.789-01', 'André Lima', 'Dentista', 'Odontologia Geral', 'CRD-12345', '(81) 91234-5678'),
('234.567.890-12', 'Bruna Santos', 'Dentista', 'Ortodontia', 'CRD-23456', '(81) 92345-6789'),
('345.678.901-23', 'Carlos Oliveira', 'Dentista', 'Endodontia', 'CRD-34567',  '(81) 93456-7890'),
('456.789.012-34', 'Daniela Rocha', 'Dentista', 'Odontopediatria', 'CRD-45678', '(81) 94567-8901'),
('567.890.123-45', 'Eduardo Ferreira', 'Dentista', 'Periodontia', 'CRD-56789', '(81) 95678-9012'),
('678.901.234-56', 'Fernanda Costa', 'Auxiliar de Dentista', 'Saúde Bucal', NULL, '(81) 96789-0123'),
('789.012.345-67', 'Gabriel Nascimento', 'Recepcionista', 'Atendimento ao Cliente', NULL, '(81) 97890-1234'),
('890.123.456-78', 'Helena Pires', 'Dentista', 'Implantodontia', 'CRD-67890', '(81) 98901-2345'),
('901.234.567-89', 'Igor Martins', 'Higienista', 'Higiene Bucal', NULL, '(81) 99012-3456'),
('012.345.678-90', 'Jéssica Almeida', 'Dentista', 'Próteses Dentárias', 'CRD-78901', '(81) 99123-4567'),
('123.654.789-01', 'Lucas Torres', 'Dentista', 'Cirurgia Bucomaxilofacial', 'CRD-89012', '(81) 91234-5678'),
('234.765.890-12', 'Mariana Sousa', 'Auxiliar de Saúde Bucal', 'Saúde Bucal', NULL, '(81) 92345-6789'),
('345.876.901-23', 'Nicolas Lima', 'Dentista', 'Odontologia Estética', 'CRD-90123', '(81) 93456-7890'),
('456.987.012-34', 'Olga Costa', 'Dentista', 'Odontologia Preventiva', 'CRD-01234', '(81) 94567-8901'),
('567.098.123-45', 'Paulo Ferreira', 'Dentista', 'Odontologia Hospitalar', 'CRD-12346', '(81) 95678-9012'),
('678.109.234-56', 'Quésia Santos', 'Recepcionista', 'Atendimento ao Cliente', NULL, '(81) 96789-0123'),
('789.210.345-67', 'Rafael Rocha', 'Dentista', 'Odontologia de Família', 'CRD-23457', '(81) 97890-1234'),
('890.321.456-78', 'Sofia Almeida', 'Higienista', 'Higiene Bucal', NULL, '(81) 98901-2345'),
('901.432.567-89', 'Tiago Pires', 'Dentista', 'Dentística', 'CRD-34568', '(81) 99012-3456'),
('012.543.678-90', 'Ursula Martins', 'Dentista', 'Ortodontia', 'CRD-45679', '(81) 99123-4567'),
('123.654.321-01', 'Vinícius Souza', 'Dentista', 'Odontologia Geral', 'CRD-56780', '(81) 91234-5678'),
('234.765.432-12', 'Yasmin Ferreira', 'Auxiliar de Dentista', 'Saúde Bucal', NULL, '(81) 92345-6789'),
('345.876.543-23', 'Zé Carlos', 'Dentista', 'Odontopediatria', 'CRD-67891', '(81) 93456-7890'),
('456.987.654-34', 'Amanda Dias', 'Dentista', 'Implantodontia', 'CRD-78902', '(81) 94567-8901'),
('567.098.765-45', 'Bruno Nascimento', 'Recepcionista', 'Atendimento ao Cliente', NULL, '(81) 95678-9012');

INSERT INTO endereco_funcionario (cep, rua, numero, cidade, estado, bairro, complemento, cpf_funcionario) VALUES
('50000-000', 'Rua A', '101', 'Recife', 'PE', 'Centro', NULL, '123.456.789-01'),
('50001-001', 'Rua B', '102', 'Recife', 'PE', 'Boa Viagem', NULL, '234.567.890-12'),
('50002-002', 'Rua C', '103', 'Recife', 'PE', 'Pina', NULL, '345.678.901-23'),
('50003-003', 'Rua D', '104', 'Recife', 'PE', 'Jardim São Paulo', NULL, '456.789.012-34'),
('50004-004', 'Rua E', '105', 'Recife', 'PE', 'Graças', NULL, '567.890.123-45'),
('50005-005', 'Rua F', '106', 'Recife', 'PE', 'Espinheiro', NULL, '678.901.234-56'),
('50006-006', 'Rua G', '107', 'Recife', 'PE', 'Cordeiro', NULL, '789.012.345-67'),
('50007-007', 'Rua H', '108', 'Recife', 'PE', 'Vasco da Gama', NULL, '890.123.456-78'),
('50008-008', 'Rua I', '109', 'Recife', 'PE', 'Iputinga', NULL, '901.234.567-89'),
('50009-009', 'Rua J', '110', 'Recife', 'PE', 'Tamarineira', NULL, '012.345.678-90'),
('50010-010', 'Rua K', '111', 'Recife', 'PE', 'Caiara', NULL, '123.654.789-01'),
('50011-011', 'Rua L', '112', 'Recife', 'PE', 'Capunga', NULL, '234.765.890-12'),
('50012-012', 'Rua M', '113', 'Recife', 'PE', 'Madalena', NULL, '345.876.901-23'),
('50013-013', 'Rua N', '114', 'Recife', 'PE', 'Coelhos', NULL, '456.987.012-34'),
('50014-014', 'Rua O', '115', 'Recife', 'PE', 'Petrópolis', NULL, '567.098.123-45'),
('50015-015', 'Rua P', '116', 'Recife', 'PE', 'Santo Amaro', NULL, '678.109.234-56'),
('50016-016', 'Rua Q', '117', 'Recife', 'PE', 'Tijucas', NULL, '789.210.345-67'),
('50017-017', 'Rua R', '118', 'Recife', 'PE', 'Bairro do Recife', NULL, '890.321.456-78'),
('50018-018', 'Rua S', '119', 'Recife', 'PE', 'Aflitos', NULL, '901.432.567-89'),
('50019-019', 'Rua T', '120', 'Recife', 'PE', 'Areias', NULL, '012.543.678-90'),
('50020-020', 'Rua U', '121', 'Recife', 'PE', 'San Martin', NULL, '123.654.321-01'),
('50021-021', 'Rua V', '122', 'Recife', 'PE', 'Tamarineira', NULL, '234.765.432-12'),
('50022-022', 'Rua W', '123', 'Recife', 'PE', 'Cordeiro', NULL, '345.876.543-23'),
('50023-023', 'Rua X', '124', 'Recife', 'PE', 'Caiara', NULL, '456.987.654-34'),
('50024-024', 'Rua Y', '125', 'Recife', 'PE', 'Capunga', NULL, '567.098.765-45');



INSERT INTO procedimento (nome, descricao, custo) VALUES
('Consulta Odontológica', 'Avaliação e diagnóstico da saúde bucal.', 150.00),
('Limpeza Dental', 'Remoção de placa e tártaro dos dentes.', 100.00),
('Restauração', 'Tratamento de cáries e restauração de dentes.', 200.00),
('Tratamento de Canal', 'Tratamento endodôntico para dentes com infecção.', 500.00),
('Extração Dental', 'Remoção de dentes que estão danificados ou não erupcionados.', 300.00),
('Clareamento Dental', 'Procedimento para clarear dentes amarelados.', 400.00),
('Aplicação de Flúor', 'Fortalecimento do esmalte dental com flúor.', 50.00),
('Prótese Dentária', 'Substituição de dentes perdidos com próteses.', 800.00),
('Ortodontia', 'Tratamento com aparelhos para corrigir a posição dos dentes.', 1200.00),
('Implante Dentário', 'Colocação de implantes para substituição de dentes ausentes.', 3000.00),
('Tratamento de Gengivite', 'Tratamento da inflamação das gengivas.', 200.00),
('Radiografia Dental', 'Exame de imagem para avaliação da saúde bucal.', 100.00),
('Anestesia Local', 'Uso de anestesia para procedimentos odontológicos.', 75.00),
('Desensibilização Dental', 'Tratamento para dentes sensíveis.', 250.00),
('Tratamento para Bruxismo', 'Tratamento para o ranger dos dentes.', 150.00),
('Odontopediatria', 'Cuidados odontológicos para crianças.', 200.00),
('Periodontia', 'Tratamento de doenças periodontais.', 300.00),
('Facetas de Porcelana', 'Aplicação de facetas para melhorar a estética dental.', 1500.00),
('Odontologia Estética', 'Procedimentos para melhorar a aparência dos dentes.', 1000.00),
('Terapia com Laser', 'Uso de laser para tratamentos odontológicos.', 350.00);

INSERT INTO lab_externo (nome_lab, contato, historico_trabalhos) VALUES
('Laboratório de Análises Odontológicas', '81 99999-0001', 'Análises de próteses e materiais dentários.'),
('Lab Dentário São Paulo', '81 98888-0002', 'Fabricação de próteses e ortodontia.'),
('Laboratório Odonto Mais', '81 97777-0003', 'Serviços de restauração e clareamento dental.'),
('DentalLab Recife', '81 96666-0004', 'Análises de radiografias e tratamentos dentários.'),
('Laboratório de Prótese Dental', '81 95555-0005', 'Fabricação de próteses personalizadas.'),
('Lab Odontológico Pernambuco', '81 94444-0006', 'Serviços de manutenção e ajustes de próteses.'),
('OdontoLab Brasil', '81 93333-0007', 'Fornecimento de materiais odontológicos.'),
('Laboratório Dental Olinda', '81 92222-0008', 'Serviços de próteses e clareamento dental.'),
('Laboratório de Diagnóstico Odontológico', '81 91111-0009', 'Radiografias e análises laboratoriais.'),
('DentalTech Labs', '81 90000-0010', 'Serviços de ortodontia e protese.'),
('Laboratório de Restauração e Clareamento', '81 89999-0011', 'Tratamentos de estética dental.'),
('OdontoExpert', '81 88888-0012', 'Consultoria e serviços em odontologia.'),
('Laboratório de Prótese e Ortodontia', '81 87777-0013', 'Fabricação de aparelhos ortodônticos.'),
('Lab Dentário Recife', '81 86666-0014', 'Ajustes e manutenção de próteses.'),
('Laboratório de Radiologia Odontológica', '81 85555-0015', 'Serviços de radiografia e diagnósticos.'),
('Laboratório de Materiais Dentários', '81 84444-0016', 'Fabricação e teste de materiais dentários.'),
('OdontoLab Centro', '81 83333-0017', 'Análises e consultoria em saúde bucal.'),
('Lab de Diagnóstico e Tratamento', '81 82222-0018', 'Serviços de análise clínica odontológica.'),
('Laboratório de Prótese Personalizada', '81 81111-0019', 'Criação de próteses sob medida.'),
('Laboratório de Análises Clínicas', '81 80000-0020', 'Exames e diagnósticos em odontologia.');

INSERT INTO atendimento_emergencia (data_atendimento, descricao, cpf_paciente, cpf_funcionario) VALUES
('2024-10-01 14:30:00', 'Dor intensa no dente posterior.', '123.456.789-00', '123.456.789-01'),
('2024-10-02 09:15:00', 'Sangramento nas gengivas após escovação.', '234.567.890-11', '234.567.890-12'),
('2024-10-03 16:00:00', 'Quebra de dente durante a alimentação.', '345.678.901-22', '234.567.890-12'),
('2024-10-04 11:45:00', 'Inchaço na região da mandíbula.', '456.789.012-33', '345.678.901-23'),
('2024-10-05 10:00:00', 'Sensibilidade extrema ao frio.', '567.890.123-44', '345.678.901-23'),
('2024-10-06 15:30:00', 'Dor ao morder alimentos.', '678.901.234-55', '345.678.901-23'),
('2024-10-07 08:20:00', 'Cárie exposta causando dor.', '789.012.345-66', '567.890.123-45'),
('2024-10-08 12:10:00', 'Dente impactado causando desconforto.', '890.123.456-77', '567.890.123-45'),
('2024-10-09 14:55:00', 'Dor de dente persistente.', '901.234.567-88', '567.890.123-45'),
('2024-10-10 17:20:00', 'Lesão na mucosa bucal.', '012.345.678-99', '567.890.123-45'),
('2024-10-11 13:40:00', 'Dificuldade em abrir a boca.', '123.456.789-01', '789.210.345-67'),
('2024-10-12 10:30:00', 'Fissura na gengiva.', '234.567.890-12', '789.210.345-67');

INSERT INTO agendamento (data_hora, procedimento, situacao_paciente, cpf_paciente, cpf_funcionario) VALUES
('2024-11-05', 'Limpeza dental', 'Confirmado', '123.456.789-00', '123.456.789-01'),
('2024-11-10', 'Aparelho dentário', 'Pendente', '234.567.890-11', '234.567.890-12'),
('2024-11-15', 'Tratamento de canal', 'Cancelado', '345.678.901-22', '345.678.901-23'),
('2024-11-20', 'Extração de dente', 'Confirmado', '456.789.012-33', '456.789.012-34'),
('2024-11-25', 'Tratamento ortodontico', 'Pendente', '567.890.123-44', '567.890.123-45'),
('2024-11-30', 'Acompanhamento periódico', 'Confirmado', '678.901.234-55', '678.901.234-56'),
('2024-12-05', 'Cárie dental', 'Pendente', '789.012.345-66', '789.012.345-67'),
('2024-12-10', 'Limpeza dental', 'Confirmado', '890.123.456-77', '890.123.456-78'),
('2024-12-15', 'Tratamento de gengivite', 'Cancelado', '901.234.567-88', '901.234.567-89'),
('2024-12-20', 'Extração de dente', 'Confirmado', '012.345.678-99', '012.345.678-90'),
('2024-12-25', 'Tratamento ortodontico', 'Pendente', '123.654.789-00', '123.456.789-01'),
('2025-01-01', 'Limpeza dental', 'Confirmado', '234.765.890-11', '234.567.890-12'),
('2025-01-05', 'Tratamento de canal', 'Cancelado', '345.876.901-22', '345.678.901-23'),
('2025-01-10', 'Aparelho dentário', 'Confirmado', '456.987.012-33', '456.789.012-34'),
('2025-01-15', 'Extração de dente', 'Pendente', '567.098.123-44', '567.890.123-45'),
('2025-01-20', 'Cárie dental', 'Confirmado', '678.109.234-55', '678.901.234-56'),
('2025-01-25', 'Limpeza dental', 'Pendente', '789.210.345-66', '789.012.345-67'),
('2025-02-01', 'Tratamento de gengivite', 'Cancelado', '890.321.456-77', '890.123.456-78'),
('2025-02-05', 'Acompanhamento periódico', 'Confirmado', '901.432.567-88', '901.234.567-89'),
('2025-02-10', 'Tratamento ortodontico', 'Pendente', '012.543.678-99', '012.345.678-90');

INSERT INTO registro_clinico (data, diagnostico, tratamento, prescricoes, recomendacoes, cpf_paciente, cpf_funcionario, id_procedimento) VALUES
('2024-01-10 09:30:00', 'Cárie dental', 'Restauração', 'Uso de flúor', 'Voltar em 6 meses', '123.456.789-00', '123.456.789-01', 1),
('2024-01-12 10:00:00', 'Tratamento de gengivite', 'Limpeza dental', 'Escovação correta', 'Retorno em 3 meses', '234.567.890-11', '234.567.890-12', 2),
('2024-01-15 11:00:00', 'Extração de dente', 'Extração', 'Analgesia', 'Retorno em 1 semana', '567.890.123-44', '345.678.901-23', 3),
('2024-01-17 14:30:00', 'Ortodontia', 'Ajuste de aparelho', 'Uso de elástico', 'Retorno em 1 mês', '789.012.345-66', '456.789.012-34', 4),
('2024-01-20 08:00:00', 'Limpeza dental regular', 'Limpeza', 'Uso de enxaguante', 'Retorno em 6 meses', '456.789.012-33', '567.890.123-45', 5),
('2024-01-22 15:30:00', 'Tratamento de canal', 'Canal', 'Antibióticos', 'Retorno em 1 mês', '901.234.567-88', '890.123.456-78', 6),
('2024-01-25 09:00:00', 'Próteses dentárias', 'Colocação de prótese', 'Manutenção', 'Retorno em 1 ano', '123.654.789-00', '012.345.678-90', 7),
('2024-01-28 10:15:00', 'Dentística', 'Restauração estética', 'Flúor', 'Retorno em 6 meses', '234.765.890-11', '123.654.789-01', 8),
('2024-01-30 11:45:00', 'Odontologia hospitalar', 'Tratamento', 'Medicamentos', 'Retorno em 2 semanas', '678.109.234-55', '567.890.123-45', 9),
('2024-02-02 08:30:00', 'Odontologia de família', 'Consulta', 'Orientações de higiene', 'Retorno em 1 ano', '678.109.234-55', '890.123.456-78', 10);

INSERT INTO faturamento (data_emissao, metodo_pagamento, valor_total, cpf_paciente) VALUES
('2024-01-10', 'Cartão de Crédito', 150.00, '123.456.789-00'),
('2024-01-12', 'Dinheiro', 200.00, '234.567.890-11'),
('2024-01-15', 'Cartão de Débito', 300.00, '456.789.012-33'),
('2024-01-17', 'Transferência', 120.00, '567.890.123-44'),
('2024-01-20', 'Cartão de Crédito', 80.00, '901.234.567-88'),
('2024-01-22', 'Dinheiro', 250.00, '123.654.789-00'),
('2024-01-25', 'Cartão de Débito', 400.00, '234.765.890-11'),
('2024-01-28', 'Transferência', 100.00, '567.098.123-44'),
('2024-01-30', 'Cartão de Crédito', 220.00, '678.109.234-55'),
('2024-02-02', 'Dinheiro', 180.00, '012.345.678-99'),
('2024-02-05', 'Cartão de Crédito', 175.00, '345.678.901-22'), 
('2024-02-08', 'Dinheiro', 95.00, '678.901.234-55'),  
('2024-02-10', 'Cartão de Débito', 210.00, '789.012.345-66'), 
('2024-02-12', 'Transferência', 130.00, '890.123.456-77'),  
('2024-02-15', 'Cartão de Crédito', 190.00, '012.345.678-99'), 
('2024-02-18', 'Dinheiro', 250.00, '234.765.432-11'), 
('2024-02-20', 'Cartão de Débito', 300.00, '345.876.543-22'),  
('2024-02-22', 'Transferência', 125.00, '456.987.654-33'), 
('2024-02-25', 'Cartão de Crédito', 110.00, '567.098.765-44'), 
('2024-02-28', 'Dinheiro', 240.00, '890.321.098-77'); 

INSERT INTO seguro_saude (nome_seguradora, numero_apolice, cobertura, cpf_paciente, id_faturamento) VALUES
('Unimed', 'APOLICE-001', 'Ambulatorial', '123.456.789-00', 1),  -- Alice Silva
('Bradesco Saúde', 'APOLICE-002', 'Hospitalar', '234.567.890-11', 2),  -- Bruno Oliveira
('Amil', 'APOLICE-003', 'Dental', '345.678.901-22', 3),  -- Carla Souza
('SulAmérica', 'APOLICE-004', 'Ambulatorial e Hospitalar', '456.789.012-33', 4),  -- Daniel Almeida
('Porto Seguro', 'APOLICE-005', 'Dental e Hospitalar', '567.890.123-44', 5),  -- Eduarda Costa
('Intermed', 'APOLICE-006', 'Ambulatorial', '678.901.234-55', 6),  -- Fernando Lima
('Bradesco Saúde', 'APOLICE-007', 'Hospitalar', '789.012.345-66', 7),  -- Gabriela Santos
('Amil', 'APOLICE-008', 'Dental', '890.123.456-77', 8),  -- Henrique Mendes
('Unimed', 'APOLICE-009', 'Ambulatorial', '901.234.567-88', 9),  -- Isabella Rocha
('SulAmérica', 'APOLICE-010', 'Hospitalar', '012.345.678-99', 10),  -- João Pereira
('Intermed', 'APOLICE-011', 'Ambulatorial', '123.654.789-00', 11),  -- Karina Ferreira
('Bradesco Saúde', 'APOLICE-012', 'Dental', '234.765.890-11', 12),  -- Lucas Martins
('Amil', 'APOLICE-013', 'Hospitalar', '345.876.901-22', 13),  -- Mariana Pires
('SulAmérica', 'APOLICE-014', 'Ambulatorial e Dental', '456.987.012-33', 14),  -- Nicolas Gomes
('Porto Seguro', 'APOLICE-015', 'Hospitalar', '567.098.123-44', 15),  -- Olivia Lima
('Unimed', 'APOLICE-016', 'Ambulatorial', '678.109.234-55', 16),  -- Paulo Santos
('Bradesco Saúde', 'APOLICE-017', 'Dental', '789.210.345-66', 17),  -- Quiteria Dias
('Amil', 'APOLICE-018', 'Hospitalar', '890.321.456-77', 18),  -- Rafael Almeida
('SulAmérica', 'APOLICE-019', 'Ambulatorial', '901.432.567-88', 19),  -- Sofia Costa
('Intermed', 'APOLICE-020', 'Dental e Hospitalar', '012.543.678-99', 20);  -- Tiago Rocha

INSERT INTO historico_lab (id_procedimento, id_historico_requisicoes) VALUES
(1, 1),  -- Consulta Odontológica
(2, 1),  -- Limpeza Dental
(3, 2),  -- Restauração
(4, 2),  -- Tratamento de Canal
(5, 3),  -- Extração Dental
(6, 3),  -- Clareamento Dental
(7, 4),  -- Aplicação de Flúor
(8, 4),  -- Prótese Dentária
(9, 5),  -- Ortodontia
(10, 5),  -- Implante Dentário
(11, 6),  -- Tratamento de Gengivite
(12, 6),  -- Radiografia Dental
(13, 7),  -- Anestesia Local
(14, 7),  -- Desensibilização Dental
(15, 8),  -- Tratamento para Bruxismo
(16, 8),  -- Odontopediatria
(17, 9),  -- Periodontia
(18, 9),  -- Facetas de Porcelana
(19, 10),  -- Odontologia Estética
(20, 10);  -- Terapia com Laser

INSERT INTO fornecedor (nome, endereco, telefone, email) VALUES
('Materiais Odontológicos do Sul', 'Rua dos Sorridentes, 120, Centro, Porto Alegre - RS, 90000-000', '(51) 99999-0001', 'contato@materiaisodontologicos.com.br'),
('Odonto Equipamentos Brasil', 'Avenida São Paulo, 300, Vila Mariana, São Paulo - SP, 04000-000', '(11) 98888-0002', 'sac@odontoequipamentos.com.br'),
('Dental Supplies Nordeste', 'Rua da Saúde, 45, Boa Viagem, Recife - PE, 51020-000', '(81) 97777-0003', 'atendimento@dentalsupplies.com.br'),
('Fornecedora de Materiais Odontológicos', 'Travessa da Esperança, 78, Jardim, Belo Horizonte - MG, 31000-000', '(31) 96666-0004', 'fornecedor@materiaisodontologicos.com.br'),
('Equipamentos Dentários do Norte', 'Rua da Paz, 200, Centro, Belém - PA, 66000-000', '(91) 95555-0005', 'vendas@equipamentosdentarios.com.br'),
('Fornecedor de Produtos Odontológicos', 'Avenida da Liberdade, 85, Centro, Salvador - BA, 40000-000', '(71) 94444-0006', 'suporte@produtosodontologicos.com.br'),
('Odonto Pronto', 'Rua das Flores, 37, Copacabana, Rio de Janeiro - RJ, 22000-000', '(21) 93333-0007', 'contato@odontopronto.com.br'),
('Materiais Dentários do Centro-Oeste', 'Avenida Brasil, 400, Setor Bueno, Goiânia - GO, 74000-000', '(62) 92222-0008', 'info@materiaisdentarios.com.br'),
('Equipamentos e Produtos Odontológicos', 'Rua do Comércio, 60, Centro, Curitiba - PR, 80000-000', '(41) 91111-0009', 'contato@equipamentosedontologicos.com.br'),
('Odonto Plus', 'Avenida das Américas, 1000, Barra da Tijuca, Rio de Janeiro - RJ, 22630-000', '(21) 90000-0010', 'atendimento@odontoplus.com.br'),
('Fornecedores de Produtos Dentários', 'Rua dos Engenheiros, 123, Ponta Grossa - PR, 84000-000', '(42) 98888-0011', 'sac@fornecedoresdentarios.com.br'),
('Materiais Odontológicos da Bahia', 'Rua do Ouro, 150, Pelourinho, Salvador - BA, 40301-000', '(71) 97777-0012', 'contato@materialba.com.br'),
('Equipamentos Odontológicos Premium', 'Rua Santa Clara, 255, Santa Teresa, Rio de Janeiro - RJ, 20241-000', '(21) 96666-0013', 'info@equipamentospremium.com.br'),
('Distribuidora Odontológica Nordeste', 'Rua da Alegria, 33, Centro, Fortaleza - CE, 60000-000', '(85) 95555-0014', 'suporte@distribuidoraodontologica.com.br'),
('Odonto Express', 'Avenida Getúlio Vargas, 45, Centro, Brasília - DF, 70000-000', '(61) 94444-0015', 'contato@odontoexpress.com.br');

INSERT INTO receita_despesa (id_receita_despesa, tipo, descricao, valor, data_registro, id_fornecedor) VALUES
(1, 'Despesa', 'Compra de materiais odontológicos.', 1500.00, '2024-01-05 09:30:00', 1),
(2, 'Despesa', 'Aquisição de equipamentos dentários.', 5000.00, '2024-01-10 11:15:00', 2),
(3, 'Despesa', 'Serviços de manutenção de equipamentos.', 750.00, '2024-01-12 14:00:00', 3),
(4, 'Despesa', 'Compra de suprimentos para limpeza dental.', 300.00, '2024-01-15 16:45:00', 4),
(5, 'Despesa', 'Aquisição de anestesia local.', 200.00, '2024-01-20 10:00:00', 5),
(6, 'Receita', 'Pagamentos por consultas odontológicas.', 2500.00, '2024-01-22 13:30:00', 6),
(7, 'Despesa', 'Compra de produtos de higiene dental.', 150.00, '2024-01-25 08:15:00', 7),
(8, 'Receita', 'Venda de clareamento dental.', 3000.00, '2024-01-28 12:00:00', 8),
(9, 'Despesa', 'Reparação de cadeira odontológica.', 1200.00, '2024-02-01 09:00:00', 9),
(10, 'Receita', 'Pagamentos por ortodontia.', 4000.00, '2024-02-03 15:30:00', 10),
(11, 'Despesa', 'Serviços de radiografia dental.', 500.00, '2024-02-05 11:45:00', 11),
(12, 'Receita', 'Venda de próteses dentárias.', 7000.00, '2024-02-07 10:20:00', 12),
(13, 'Despesa', 'Compra de facetas de porcelana.', 1800.00, '2024-02-10 14:30:00', 13),
(14, 'Receita', 'Pagamentos por tratamento de canal.', 3000.00, '2024-02-12 12:10:00', 14),
(15, 'Despesa', 'Aquisição de materiais para periodontia.', 900.00, '2024-02-15 08:50:00', 15);
