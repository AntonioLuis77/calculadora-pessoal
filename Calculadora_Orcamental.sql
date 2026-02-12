CREATE TABLE utilizador (
    ID_Utilizador INT PRIMARY AUTO_INCREMENT ,
    nome varchar(30),
    email varchar(30),
    senha varchar(255)
);

CREATE TABLE Categoria (
    ID_Categoria INT PRIMARY AUTO_INCREMENT,
    nome varchar(100),
    descricao varchar(100),
    ID_Utilizador int NOT NULL,
    FOREIGN KEY(ID_Utilizador)
REFERENCES Utilizador(ID_Utilizador)

);


CREATE TABLE Receita (
    ID_Receita INT PRIMARY AUTO_INCREMENT,
    valor decimal (10 , 2 ) NOT NULL,
    data date NOT NULL,
    descricao varchar(100),
    ID_Utilizador int NOT NULL, 
    FOREIGN KEY (ID_Utilizador)
REFERENCES Utilizador(ID_Utilizador)

);



CREATE TABLE Despesas (
    ID_Despesas INT PRIMARY AUTO_INCREMENT,
    valor decimal(10 , 2) NOT NULL,
    data date NOT NULL,
    descricao varchar(100),
    ID_Utilizador int NOT NULL,
    ID_Categoria int NOT NULL,
    FOREIGN KEY (ID_Utilizador)
REFERENCES Utilizador(ID_Utilizador),
    FOREIGN KEY (ID_Categoria)
REFERENCES Categoria(ID_Categoria) 

);

