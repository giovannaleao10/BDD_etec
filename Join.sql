CREATE DATABASE MERCEARIA;

USE MERCEARIA;

CREATE TABLE FORNECEDOR (
    ID INT PRIMARY KEY,
    FORNOME VARCHAR(100) NOT NULL
);

CREATE TABLE PRODUTO (
    ID INT PRIMARY KEY,
    PRONOME VARCHAR(100) NOT NULL,
    PROVLRUNITARIO FLOAT NOT NULL,
    IDFORNECEDOR INT NOT NULL,
    CONSTRAINT FK_PROD FOREIGN KEY(IDFORNECEDOR) REFERENCES FORNECEDOR(ID)
);

CREATE TABLE CLIENTE (
    ID INT PRIMARY KEY,
    CLINOME VARCHAR(100) NOT NULL,
    CLIENDERECO VARCHAR(40),
    CLITELEFONE VARCHAR(14)
);

CREATE TABLE NOTAFISCAL (
    ID INT PRIMARY KEY,
    NOTAEMISSAO DATE NOT NULL,
    IDCLIENTE INT NOT NULL,
    CONSTRAINT FK_NOTA FOREIGN KEY(IDCLIENTE) REFERENCES CLIENTE(ID)
);

CREATE TABLE NOTADETALHE (
    SEQUENCIA INT PRIMARY KEY,
    IDNOTAFISCAL INT NOT NULL,
    QUANTIDADE FLOAT NOT NULL,
    VALORUNITARIO FLOAT NOT NULL,
    IDPRODUTO INT NOT NULL,
    CONSTRAINT FK_NOTADET FOREIGN KEY(IDNOTAFISCAL) REFERENCES NOTAFISCAL(ID),
    CONSTRAINT FK_NOTAPROD FOREIGN KEY(IDPRODUTO) REFERENCES PRODUTO(ID)
);
INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (20,'FORNECEDOR FOR#1');
INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (30,'FORNECEDOR FOR#2');
INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (40,'FORNECEDOR FOR#3');
INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (50,'FORNECEDOR FOR#4');
INSERT INTO FORNECEDOR (ID,FORNOME) VALUES (60,'FORNECEDOR FOR#5');

INSERT INTO PRODUTO(ID,PRONOME,IDFORNECEDOR,PROVLRUNITARIO) VALUES (100,'PRODUTO PRO#1',20,10.55);
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

INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (108,'CLIENTE CLI#1',NULL,NULL);
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES(109,'CLIENTE CLI#2','RUA SAMARA 118','3248-6090'); 
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (110,'CLIENTE CLI#3',NULL,'3242-2525');
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (111,'CLIENTE CLI#4',NULL,NULL);
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (112,'CLIENTE CLI#5','RUA BITUVAS 110',NULL);
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (113,'CLIENTE CLI#6','RUA DOS MORCEGOS','9141-2626');
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (114,'CLIENTE CLI#7','AV. 7 SETEMBRO 77','3247-7777');
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (115,'CLIENTECLI#8','AV. 4 JULHO 1973',NULL);
INSERT INTO CLIENTE(ID,CLINOME,CLIENDERECO,CLITELEFONE)VALUES (116,'CLIENTE CLI#9',NULL,NULL);

INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (300,'12/12/2003',108);
INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (400,'15/02/2002',112);
INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (500,'05/02/2011',115);
INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (600,'03/06/2011',112);
INSERT INTO NOTAFISCAL(ID,NOTAEMISSAO,IDCLIENTE)VALUES (701,'04/09/2012',114);

INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (300,1,2.0,20.53,111);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (300,2,3.0,19.90,110);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (300,3,1.0,19.90,101);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (400,4,2.0,20.53,109);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (400,5,3.0,19.90,103);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (400,6,1.0,19.90,104);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO)VALUES (400,7,1.0,35.00,106);
INSERT INTO NOTADETALHE(IDNOTAFISCAL,SEQUENCIA,QUANTIDADE,VALORUNITARIO,IDPRODUTO) VALUES(500,8,1.0,10.53,102);
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

//*1-Liste o nome dos produtos e dos seus respectivos fornecedorescujo valor unit�rio seja maior que a m�dia do valor unit�riodos produtos vendidos.*//

SELECT P.PRONOME, F.FORNOME
FROM PRODUTO P
JOIN FORNECEDOR F ON P.IDFORNECEDOR = F.ID
WHERE P.PROVLRUNITARIO > (
    SELECT AVG(VALORUNITARIO)
    FROM NOTADETALHE)

//*2-Liste a data de emiss�o das notas fiscais de todos os clientes cujonomen�ocome�a com Carlose que n�o possua um n�mero de telefone cadastrado.*//

SELECT NOTAFISCAL.NOTAEMISSAO
FROM NOTAFISCAL
JOIN CLIENTE ON NOTAFISCAL.IDCLIENTE = CLIENTE.ID
WHERE CLIENTE.CLINOME NOT LIKE 'Carlos%'
AND CLIENTE.CLITELEFONE IS NULL;

//*3-Liste o valor total de cada nota fiscal e o nome do respectivo cliente.*//

SELECT NF.ID AS NOTA_FISCAL_ID, CLI.CLINOME AS CLIENTE_NOME, SUM(ND.QUANTIDADE * ND.VALORUNITARIO) AS VALOR_TOTAL
FROM NOTAFISCAL NF
JOIN CLIENTE CLI ON NF.IDCLIENTE = CLI.ID
JOIN NOTADETALHE ND ON NF.ID = ND.IDNOTAFISCAL
GROUP BY NF.ID, CLI.CLINOME;

//*4-Liste o nome do produtomais vendido e sua respectiva quantidade.*//

SELECT p.PRONOME AS ProdutoMaisVendido, SUM(nd.QUANTIDADE) AS QuantidadeVendida
FROM PRODUTO p
JOIN NOTADETALHE nd ON p.ID = nd.IDPRODUTO
GROUP BY p.PRONOME
ORDER BY QuantidadeVendida DESC

//*5-Liste o nome dos clientes que ainda n�o realizaram uma compra.*//

SELECT CLINOME
FROM CLIENTE
LEFT JOIN NOTAFISCAL ON CLIENTE.ID = NOTAFISCAL.IDCLIENTE
WHERE NOTAFISCAL.ID IS NULL;


//*6-Liste o valor total da maior nota emitidae o nome do respectivo cliente.*//

SELECT NF.ID, C.CLINOME, SUM(ND.QUANTIDADE * ND.VALORUNITARIO) AS VALOR_TOTAL
FROM NOTAFISCAL NF
JOIN CLIENTE C ON NF.IDCLIENTE = C.ID
JOIN NOTADETALHE ND ON NF.ID = ND.IDNOTAFISCAL
GROUP BY NF.ID, C.CLINOME
ORDER BY VALOR_TOTAL DESC