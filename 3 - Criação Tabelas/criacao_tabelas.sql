CREATE TABLE leitor 
( 
 idLeitor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,  
 nome VARCHAR(255) NOT NULL,  
 email VARCHAR(255) UNIQUE NOT NULL,  
 telefone VARCHAR(20) UNIQUE NOT NULL CHECK (LENGTH(telefone) >= 10),  
 data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
 endereco VARCHAR(255) NOT NULL
); 

CREATE TABLE emprestimo 
( 
 idEmprestimo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,  
 idLeitor INT NOT NULL,  
 data_devolucao DATE NOT NULL,
 data_emprestimo DATE DEFAULT CURRENT_TIMESTAMP NOT NULL
); 

CREATE TABLE livro 
( 
 idLivro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,  
 titulo VARCHAR(255) NOT NULL,  
 ISBN VARCHAR(20) NOT NULL,  
 ano_pub INT CHECK (ano_pub > 1000),  
 categoria VARCHAR(100) DEFAULT 'Não Informado', 
 descricao TEXT,
 UNIQUE (ISBN)
); 

CREATE TABLE autor 
( 
 idAutor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,  
 nomeAutor VARCHAR(255) DEFAULT 'Não Informado', 
 nacionalidade VARCHAR(30) default 'Não Informado'
); 

CREATE TABLE item_emprestimo 
( 
 idItem INT PRIMARY KEY AUTO_INCREMENT NOT NULL,  
 idLivro INT NOT NULL,
 idEmprestimo INT NOT NULL,
 data_retorno DATE,
 status VARCHAR(30) DEFAULT 'Emprestado' CHECK (status IN ('Emprestado', 'Devolvido', 'Atrasado', 'Perdido'))
); 

CREATE TABLE escreve 
( 
 idEscreve INT PRIMARY KEY AUTO_INCREMENT NOT NULL,  
 idAutor INT NOT NULL,  
 idLivro INT NOT NULL
); 

describe leitor;
describe emprestimo;
describe livro;
describe autor;
describe item_emprestimo;
describe escreve;
ALTER TABLE emprestimo ADD FOREIGN KEY(idLeitor) REFERENCES leitor (idLeitor);
ALTER TABLE item_emprestimo ADD FOREIGN KEY(idLivro) REFERENCES livro (idLivro);
ALTER TABLE item_emprestimo ADD FOREIGN KEY(idEmprestimo) REFERENCES emprestimo (idEmprestimo);
ALTER TABLE escreve ADD FOREIGN KEY(idAutor) REFERENCES autor (idAutor);
ALTER TABLE escreve ADD FOREIGN KEY(idLivro) REFERENCES livro (idLivro);