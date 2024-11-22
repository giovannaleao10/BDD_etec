Create database Empresa_pacotes;

create table departamento(
departamentoid int primary key identity,
nome varchar (45)
);

create table pacotes(
pacoteid int primary key identity,
velocidade varchar(45),
data_inicio date,
mensalidade float,
departamentoid int,
constraint fk_departamento foreign key (departamentoid) references departamento (departamentoid)
);

create table cliente(
clienteid int primary key identity,
cpf varchar(30),
nome varchar(100),
sobrenome varchar (45),
dt_nascimento date,
cidade varchar (45),
estado char (2),
endereco varchar(100),
telefone varchar(20),
celular varchar (45),
desconto_mensal varchar (45),
cep varchar(20),
dt_cadastro date,
pacoteid int,
constraint fk_pacotes foreign key (pacoteid) references pacotes (pacoteid)
);

create table categoria_pacote(
clienteid int primary key identity,
nome varchar (45),
preco_min float,
preco_max float
);

--1
SELECT estado, count (clienteid) AS 'cliente por estado'
FROM cliente
GROUP BY estado;
--2
SELECT velocidade, AVG (mensalidade) AS 'média pagamento mensal para cada velocidade'
FROM pacotes
GROUP BY velocidade
--3
SELECT estado, count (cidade) AS 'cliente por estado'
FROM cliente
GROUP BY estado;
--4
SELECT departamentoid, MAX(mensalidade) AS ' maior pagamento mensal por departamento '
FROM pacotes
GROUP BY departamentoid
--5
SELECT pacoteid, AVG (desconto_mensal) AS ' média de desconto mensal para cada pacote'
FROM cliente
GROUP BY pacoteid
--6
SELECT pacoteid, AVG(desconto_mensal) AS 'média de desconto mensal para cada pacote'
FROM cliente
GROUP BY pacoteid
HAVING pacoteid = 22 or pacoteid = 13
--7
SELECT velocidade, MAX(mensalidade) AS 'maior_pagamento_mensal',
       MIN(mensalidade) AS 'menor_pagamento_mensal ',
       AVG(mensalidade) AS 'media_pagamento_mensal'
FROM pacotes
GROUP BY velocidade;
--8
SELECT velocidade, count(pacoteid) AS ' número do pacote para cada velocidade de internet'
FROM pacotes
GROUP BY velocidade
HAVING count(pacoteid) > 8
