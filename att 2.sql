create database empresa;

 create table produto (
 produtoid int primary key identity,
 nome varchar(100) not null,
 descricao varchar(100) not null,
 valor float,
 qtd int not null,
 marca varchar(100) not null,
 constraint water_qtd check (qtd <=40)
 );

 create table funcionario (
 funcionarioid int primary key identity,
 nome varchar(100) not null,
 sobrenome varchar(100) not null,
 matricula int  not null,
 constraint cheese_matric unique (matricula),
 idade int,
 cpf varchar(100) not null,
 constraint cheese_cpf unique (cpf),
 salario float,
 cargo varchar(100) not null
 );

 create table cliente (
 clientid int primary key identity,
 nome varchar(100) not null,
 cpf varchar (100) not null,
 constraint bread_cpf unique (cpf),
 endereco int,
 cep int not null,
 cidade varchar(100),
 estado varchar (100),
 telefone int not null,
 email char (100) not null,
 funcionarioid int not null,
 constraint lucky_fun foreign key (funcionarioid) references funcionario (funcionarioid)
 );