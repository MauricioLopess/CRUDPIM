DROP DATABASE DBPIM;
CREATE DATABASE DBPIM;
USE DBPIM;

CREATE TABLE tb_Endereco(
	id_endereco INT IDENTITY(1, 1),
	logradouro VARCHAR(256) NOT NULL,
	num_casa INT NOT NULL,
	cep INT NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	cidade VARCHAR(30) NOT NULL,
	estado VARCHAR(20) NOT NULL,

	PRIMARY KEY (id_endereco)
);

CREATE TABLE tb_Pessoa(
	id_pessoa INT IDENTITY(1, 1),
	nome_pessoa VARCHAR(256) NOT NULL,
	cpf BIGINT NOT NULL,
	endereco_pessoa INT,

	PRIMARY KEY (id_pessoa),
	FOREIGN KEY (endereco_pessoa) REFERENCES tb_Endereco (id_endereco)
);

CREATE TABLE tb_Telefone_tipo(
	id_tipo_telefone INT  IDENTITY(1, 1),
	tipo VARCHAR(10) NOT NULL

	PRIMARY KEY (id_tipo_telefone)
);

CREATE TABLE tb_Telefone(
	id_telefone INT IDENTITY(1, 1),
	numero INT NOT NULL,
	ddd INT NOT NULL,
	tipo_telefone int,

	PRIMARY KEY (id_telefone),
	FOREIGN KEY (tipo_telefone) REFERENCES tb_Telefone_tipo (id_tipo_telefone)
);

CREATE TABLE tb_Pessoa_telefone(
	id_pessoa_assoc INT,
	id_telefone_assoc INT,
	
	FOREIGN KEY (id_pessoa_assoc) REFERENCES tb_Pessoa (id_pessoa),
	FOREIGN KEY (id_telefone_assoc) REFERENCES tb_Telefone (id_telefone),

	PRIMARY KEY (id_pessoa_assoc, id_telefone_assoc)
);
-------------------------------------
--SELECT * FROM tb_Pessoa INNER JOIN tb_Endereco ON endereco_pessoa = id_endereco;
SELECT * FROM tb_Telefone_tipo;


SELECT tb_Pessoa.nome_pessoa,
		tb_Pessoa.cpf,
		tb_Telefone.ddd,
		tb_Telefone.numero,
		tb_Endereco.logradouro,
		tb_Endereco.num_casa,
		tb_Endereco.cep,
		tb_Endereco.bairro,
		tb_Endereco.estado
	FROM tb_Pessoa
	JOIN tb_Telefone ON tb_Pessoa.id_pessoa = tb_Telefone.id_telefone
	JOIN tb_Endereco ON tb_Pessoa.id_pessoa = tb_Endereco.id_Endereco;


