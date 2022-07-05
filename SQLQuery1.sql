CREATE DATABASE Escola;

CREATE TABLE instituicao (
	id int primary key identity(1,1),
	nome varchar(60) not null,
	endereco varchar(80) not null,
	cnpj varchar(20) not null,
);

CREATE TABLE aluno (
	id int primary key identity(1,1),
	nome varchar(60) not null,
	sobrenome varchar(60) not null,
	matricula varchar(60) not null,
	id_instituicao int not null,
	
	CONSTRAINT FK_aluno_instituicao FOREIGN KEY (id_instituicao) REFERENCES instituicao(id)
);