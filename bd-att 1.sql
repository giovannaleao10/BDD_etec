create database floricultura;

create table compras(
compraid int primary key identity,
valor float not null,
dt_compra date,
funcionarioid int,
clienteid int,
constraint fk_cliente foreign key (clienteid) 
references cliente (clienteid)
);

create table cliente(
clienteid int primary key identity,
cpf varchar(30),
nome varchar(100),
endereco varchar(100),
telefone varchar(20),
cep varchar(20),
dt_cadastro date
);

create table produto(
produtoid int primary key identity,
preco float,
qtd_estoque int,
nome varchar(100),
descricao text,
dt_valid date
);

create table compra_produto(
comp_prod int primary key identity,
compra_cliente_clienteid int,
compra_produto_produtoid int,
compra_compraid int,
constraint compra_cliente_clienteid  foreign key (compra_cliente_clienteid) references cliente (clienteid),
constraint compra_produto_produtoid  foreign key (compra_produto_produtoid) references produto (produtoid),
constraint compra_compraid  foreign key (compra_compraid) references compras (compraid)
)


/*1.Retorne o preço da compra mais cara realizada até hoje.*/
select max (valor) from compras

/*2.Retorne a quantidade de clientes cadastrados.*/
select count(dt_cadastro) from cliente

/*3.Retorne o produto com menos quantidade em estoque.*/
select min (qtd_estoque) from produto

/*4.Retorne a média de preço dos produtos em estoque.*/
select avg (preco) from produto

/*5.Retorne o valor total ganho pela floricultura com as compras até hoje.*/
select sum (valor) from compras