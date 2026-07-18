
INSERT INTO tbl_marcas_veiculos (marca) VALUES
('SCANIA'),
('VOLVO'),
('MERCEDES-BENZ'),
('RANDON'),
('FACCHINI');

INSERT INTO tbl_modelo_veiculos (modelo, marca_id) VALUES
('R450', 1),
('R500', 1),
('FH 460', 2),
('FH 540', 2),
('ACTROS 2651', 3),
('SEMI-REBOQUE BAÚ', 4),
('SEMI-REBOQUE SIDER', 4),
('SEMI-REBOQUE GRANEL', 5);

INSERT INTO tbl_tipos_veiculos (tipo_veiculo) VALUES
('CAVALO'),
('SEMI-REBOQUE');

INSERT INTO tbl_centro_de_custo (centro_de_custo) VALUES
('ULTRAGAZ'),
('KLABIN'),
('TETRAPACK'),
('HEINEKEN'),
('AMBEV'),
('CASTROLANDA');

INSERT INTO tbl_centro_de_gasto (centro_de_gasto) VALUES
('DEDICADO'),
('BALDEIO'),
('SPOT');

INSERT INTO tbl_unidade_de_negocio (unidade_de_negocio) VALUES
('PONTA GROSSA'),
('RIBEIRAO PRETO'),
('LENCOIS PAULISTA'),
('CACAPAVA');

INSERT INTO tbl_placas_veiculos (
    placa, marca_id, modelo_id, tipo_veiculo_id, ano_fabricacao, ano_modelo, 
    chassi, renavam, cor, centro_de_custo_id, unidade_de_negocio_id, 
    centro_de_gasto_id, odometro, status
) VALUES
('KLA1A23', 1, 1, 1, 2021, 2022, '9BS1234567890ABCD', '12345678901', 'BRANCO', 2, 1, 1, 245000, 'ATIVO'),
('HEI9B87', 2, 4, 1, 2023, 2023, '9BV9876543210WXYZ', '98765432109', 'PRATA', 4, 2, 1, 85000, 'ATIVO'),
('CAS4C56', 3, 5, 1, 2019, 2019, '9BM55566677788899', '55566677788', 'BRANCO', 6, 1, 3, 480000, 'MANUTENCAO'),
('BAU1R22', 4, 6, 2, 2021, 2022, '9BR11122233344455', '11122233344', 'CINZA', 2, 1, 1, 0, 'ATIVO'),
('SID9S99', 4, 7, 2, 2023, 2023, '9BR55544433322211', '55544433322', 'PRETO', 4, 2, 1, 0, 'ATIVO'),
('GRA3G33', 5, 8, 2, 2018, 2018, '9BF99998888777766', '99988877766', 'VERMELHO', 6, 1, 3, 0, 'INATIVO');