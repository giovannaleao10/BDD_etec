CREATE DATABASE MERCEARIA;
CREATE TABLE FORNECEDOR (
ID INTPRIMARY KEY,
FORNOME VARCHAR(100) NOT NULL
);

�

CREATETABLE PRODUTO (
ID INTPRIMARY KEY,
PRONOME VARCHAR(100)NOT NULL,
PROVLRUNITARIO FLOATNOT NULL,
IDFORNECEDOR INTNOT NULL,
CONSTRAINT FK_PROD FOREIGN KEY(IDFORNECEDOR)�
REFERENCES FORNECEDOR (IDPRODUTO)
);

�

CREATE TABLE CLIENTE (
ID INTPRIMARY KEY,
CLINOME VARCHAR(0) NOT NULL,
CLIENDERECO VARCHAR(40),
CLITELEFONE VARCHAR(14)
);

�

CREATE TABLE NOTAFISCAL (
ID INTPRIMARY KEY,
NOTAEMISSAO DATE NOT NULL,
IDCLIENTE INT NOT NULL,
CONSTRAINT FK_NOTA FOREIGN KEY(IDCLIENTE)
REFERENCES CLIENTE (ID)
);

�

CREATE TABLE NOTADETALHE (
SEQUENCIA INTPRIMARY KEY,
IDNOTAFISCAL INTNOT NULL,
QUANTIDADE FLOATNOT NULL,
VALORUNITARIO FLOATNOT NULL,
IDPRODUTO FLOATNOT NULL,
CONSTRAINT FK_NOTADET FOREIGN KEY(IDNOTAFISCAL)�
REFERENCES NOTAFISCAL (ID),
3CONSTRAINT FK_NOTAPROD FOREIGN KEY(IDPRODUTO)�
REFERENCES PRODUTO (ID)
);

�

INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (20,'FORNECEDOR FOR#1');
INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (30,'FORNECEDOR FOR#2');
INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (40,'FORNECEDOR FOR#3');
INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (50,'FORNECEDOR FOR#4');
INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (60,'FORNECEDOR FOR#5');
INSERTINTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (100,'PRODUTO PRO#1',20,10.55);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (101,'PRODUTO PRO#2',20,2.30);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (102,'PRODUTO PRO#3',30,15.10);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (103,'PRODUTO PRO#4',20,98.00);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (104,'PRODUTO PRO#5',40,100.00);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (106,'PRODUTO PRO#6',20,101.50);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (107,'PRODUTO PRO#7',60,25.66);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (108,'PRODUTO PRO#8',50,30.31);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (109,'PRODUTO PRO#90',40,60.66);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (110,'PRODUTO PRO#80',20,70.13);
INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (111,'PRODUTO PRO#108',30,82.30);

�

INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (108,'CLIENTE CLI#1',NULL,NULL);
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES(109,'CLIENTE CLI#2','RUA SAMARA 118','3248-6090');�
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (110,'CLIENTE CLI#3',NULL,'3242-2525');
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (111,'CLIENTE CLI#4',NULL,NULL);
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (112,'CLIENTE CLI#5','RUA BITUVAS 110',NULL);
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (113,'CLIENTE CLI#6','RUA DOS MORCEGOS','9141-2626');
INSERT INTOCLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (114,'CLIENTE CLI#7','AV. 7 SETEMBRO 77','3247-7777');
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (115,'CLIENTECLI#8','AV. 4 JULHO 1973',NULL);
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (116,'CLIENTE CLI#9',NULL,NULL)

�

INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (300,'12/12/2003',108);
INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (400,'15/02/2002',112);
INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (500,'05/02/2011',115);
INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (600,'03/06/2011',112);
INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (701,'04/09/2012',114);

�

INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (300,1,2.0,20.53,111);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (300,2,3.0,19.90,110);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (300,3,1.0,19.90,101);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (400,4,2.0,20.53,109);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (400,5,3.0,19.90,103);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (400,6,1.0,19.90,104);
INSERT INTONOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (400,7,1.0,35.00,106);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(500,8,1.0,10.53,102);

�

INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(500,9,5.0,19.90,109);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(500,10,6.0,19.90,110);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(500,11,2.5,21.35,102);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(500,12,8.0,35.00,106);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(600,13,2.0,10.55,100);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(600,14,3.0,17.90,101);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(600,15,7.0,15.50,110);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(600,16,3.5,21.35,103);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(600,17,1.0,36.00,107);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(600,18,1.0,36.00,107);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(701,19,2.0,10.55,100);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(701,20,3.0,17.90,101);

/*1-Encontre e cite as 3 inconsist�ncias que existem no script de cria��o das tabelas
abaixo.*/
As tr�s inconsist�ncias no script de cria��o das tabelas s�o:

Na tabela "PRODUTO", na defini��o da chave estrangeira "FK_PROD", h� uma refer�ncia incorreta ao campo "IDPRODUTO" da tabela "FORNECEDOR", quando deveria ser "ID". A defini��o correta seria:
CONSTRAINT FK_PROD FOREIGN KEY(IDFORNECEDOR) REFERENCES FORNECEDOR(ID)
Na tabela "NOTADETALHE", o campo "IDPRODUTO" est� definido como FLOAT, quando deveria ser INT, para que pudesse referenciar o campo "ID" da tabela "PRODUTO". A defini��o correta seria:
IDPRODUTO INT NOT NULL,
Na tabela "CLIENTE", o tamanho do campo "CLINOME" est� definido como 0, quando deveria ter um tamanho m�nimo de 1. A defini��o correta seria:
CLINOME VARCHAR(1) NOT NULL,

/*2-Mostre o total de fornecedores cadastrados.*/
SELECT COUNT(*) AS FORNOME 

FROM FORNECEDOR  

ORDER BY FORNOME DESC; 

/*3-Mostre o nome dos produtos ordenados do mais caro para o mais barato e em
ordem alfab�tica*/
SELECT PRONOME 
FROM PRODUTO 
ORDER BY PROVLRUNITARIO DESC, PRONOME  ASC;

/*4-Mostre a soma, m�dia, valor m�ximo e valor m�nimo dos produtos cadastrados com
apenas uma consulta.*/
SELECT SUM(PROVLRUNITARIO) AS soma, 
AVG(PROVLRUNITARIO) AS media, 
MAX(PROVLRUNITARIO) AS maximo, 
MIN(PROVLRUNITARIO) AS minimo
FROM PRODUTO 
ORDER BY soma DESC;

/*5-Mostre a quantidade de produtos classificados por fornecedor*/
SELECT IDFORNECEDOR, COUNT(*) AS quantidade
FROM PRODUTO
GROUP BY IDFORNECEDOR
ORDER BY IDFORNECEDOR ASC;


/*6-Mostre a soma dos valores dos produtos classificados por fornecedor onde a soma
dos valores dos produtos seja maior do que 100.*/
SELECT IDFORNECEDOR, SUM(PROVLRUNITARIO) AS soma_valores
FROM PRODUTO
GROUP BY IDFORNECEDOR
HAVING SUM(PROVLRUNITARIO) > 100
ORDER BY IDFORNECEDOR ASC;


/*7-Mostre o valor total vendido classificado por produto, mas apenas as vendas
maiores que R$20,00.*/
SELECT IDPRODUTO, SUM(VALORUNITARIO) AS valor_total_vendido
FROM NOTADETALHE
WHERE VALORUNITARIO > 20
GROUP BY IDPRODUTO
ORDER BY IDPRODUTO ASC;

/*8-Mostre o c�digo da Nota Fiscal e o total de cada Nota (valor unit�rio * quantidade)
agrupado por Nota e por produto.*/
SELECT IDNOTAFISCAL, IDPRODUTO, SUM(VALORUNITARIO * QUANTIDADE) AS total
FROM  NOTADETALHE
GROUP BY IDNOTAFISCAL, IDPRODUTO
ORDER BY IDNOTAFISCAL ASC, IDPRODUTO ASC;






