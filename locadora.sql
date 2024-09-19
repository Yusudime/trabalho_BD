create database Locadora;
use Locadora;

CREATE TABLE filmes (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    diretor VARCHAR(100),
    ano_lancamento YEAR,
    classificacao_etaria VARCHAR(10),
    estoque INT NOT NULL
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    telefone VARCHAR(15),
    email VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE locacoes (
    id_locacao INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_filme INT,
    data_locacao DATE NOT NULL,
    data_devolucao DATE,
    valor DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_filme) REFERENCES filmes(id_filme)
);

CREATE TABLE pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_locacao INT,
    data_pagamento DATE NOT NULL,
    valor_pago DECIMAL(5,2) NOT NULL,
    metodo_pagamento VARCHAR(50),
    FOREIGN KEY (id_locacao) REFERENCES locacoes(id_locacao)
);

select * from pagamentos;
