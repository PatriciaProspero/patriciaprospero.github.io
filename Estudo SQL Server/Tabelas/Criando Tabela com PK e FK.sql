/* PARA CRIAR UMA TABELA PK E FK (VOC� S� VAI PODER INSERIR NA TABELA PESSOA FISICA DEPOIS Q A TABELA PESSOAS ESTIVER PREENCHIDA, 
E S� PODER� EXCLUIR DA PESSOA FISICA SE A PESSOAS ESTIVER EXCLU�DA PRIMEIRO.*/

CREATE TABLE PESSOAS
(
	ID_PESSOA_FISICA INT IDENTITY(1,1) PRIMARY KEY,
	ID_PESSOA_TIPO	 INT
);

CREATE TABLE PESSOA_FISICA
(
	ID_PESSOA_FISICA		INT IDENTITY(1,1) PRIMARY KEY,
	NOME					VARCHAR (225),
	CPF						VARCHAR (11),
	RG						VARCHAR (20),
	DATA_NASCIMENTO			DATE
	CONSTRAINT FK_PESSOAS	FOREIGN KEY (ID_PESSOA_FISICA) REFERENCES PESSOAS(ID_PESSOA_FISICA),
)



