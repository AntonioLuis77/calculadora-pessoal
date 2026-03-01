CREATE TABLE utilizador (
    id int NOT NULL PRIMARY AUTO_INCREMENT ,
    nome varchar(30),
    email varchar(30),
    senha varchar(255)
);


CREATE TABLE Categoria (
    id int NOT NULL PRIMARY AUTO_INCREMENT,
    nome varchar(100),
    descricao varchar(100),
    id_utilizador int NOT NULL,
    FOREIGN KEY(id_utilizador) REFERENCES Utilizador(id)
);

CREATE TABLE Receita (
    id int NOT NULL PRIMARY AUTO_INCREMENT,
    valor decimal (10 , 2 ) NOT NULL,
    data date NOT NULL,
    descricao varchar(100), 
    FOREIGN KEY (id_Utilizador) REFERENCES Utilizador(id)

);



CREATE TABLE Despesas (
    id int NOT NULL PRIMARY AUTO_INCREMENT,
    valor decimal(10 , 2) NOT NULL,
    data date NOT NULL,
    descricao varchar(100),
    FOREIGN KEY (id_Utilizador) REFERENCES Utilizador(id),
    FOREIGN KEY (id_Categoria) REFERENCES Categoria(id) 

);






