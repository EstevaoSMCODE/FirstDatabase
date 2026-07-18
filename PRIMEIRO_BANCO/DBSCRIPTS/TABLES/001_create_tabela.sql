CREATE TABLE tbl_marcas_veiculos (
    id SERIAL PRIMARY KEY,
    marca VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_modelo_veiculos (
    id SERIAL PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    marca_id INT NOT NULL,
    CONSTRAINT fk_modelo_marca FOREIGN KEY (marca_id) REFERENCES tbl_marcas_veiculos(id)
);

CREATE TABLE tbl_tipos_veiculos (
    id SERIAL PRIMARY KEY,
    tipo_veiculo VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_centro_de_custo (
    id SERIAL PRIMARY KEY,
    centro_de_custo VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_centro_de_gasto (
    id SERIAL PRIMARY KEY,
    centro_de_gasto VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_unidade_de_negocio (
    id SERIAL PRIMARY KEY,
    unidade_de_negocio VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_placas_veiculos (
    id SERIAL PRIMARY KEY,
    placa VARCHAR(7) NOT NULL UNIQUE,
    marca_id INT NOT NULL,
    modelo_id INT NOT NULL,
    tipo_veiculo_id INT NOT NULL, --CAVALO, SEMI-REBOQUE, CAMINHAO-TRUCK,VAN,MOTO,CARRO
    ano_fabricacao INT,
    ano_modelo INT,
    chassi VARCHAR(17) UNIQUE,
    renavam VARCHAR(50) UNIQUE,
    cor VARCHAR(50), --PADRAO
    centro_de_custo_id INT NOT NULL, --ULTRAGAZ, KLABIN, TETRAPACK, HEINEKEN, AMBEV, CASTROLANDA
    unidade_de_negocio_id INT NOT NULL, --PONTA GROSSA, RIBEIRAO PRETO,LENCOIS PAULISTA, CACAPAVA
    centro_de_gasto_id INT NOT NULL, --DEDICADO,BALDEIO,SPOT
    odometro INT,
    data_inclusao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) NOT NULL CHECK (status IN ('ATIVO', 'INATIVO', 'MANUTENCAO')),
    CONSTRAINT fk_veiculo_marca FOREIGN KEY (marca_id) REFERENCES tbl_marcas_veiculos(id),
    CONSTRAINT fk_veiculo_modelo FOREIGN KEY (modelo_id) REFERENCES tbl_modelo_veiculos(id),
    CONSTRAINT fk_veiculo_tipo FOREIGN KEY (tipo_veiculo_id) REFERENCES tbl_tipos_veiculos(id),
    CONSTRAINT fk_veiculo_custo FOREIGN KEY (centro_de_custo_id) REFERENCES tbl_centro_de_custo(id),
    CONSTRAINT fk_veiculo_negocio FOREIGN KEY (unidade_de_negocio_id) REFERENCES tbl_unidade_de_negocio(id),
    CONSTRAINT fk_veiculo_gasto FOREIGN KEY (centro_de_gasto_id) REFERENCES tbl_centro_de_gasto(id)
);