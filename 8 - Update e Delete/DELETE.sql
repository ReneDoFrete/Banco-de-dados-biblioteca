insert into leitor (data_cadastro, nome, email, telefone, endereco) values
(default, 'TEste teste', 'testedelete@gmail.com', '21980485344', 'Rua 1, Nº 171 - Santa Cruz, Rio de Janeiro');

select * from leitor;

DELETE FROM leitor 
WHERE email = 'testedelete@gmail.com';

select * from leitor;