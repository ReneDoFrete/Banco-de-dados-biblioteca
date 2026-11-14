# Trabalho de Banco de Dados - Biblioteca

## Aluno: Renê Enzo Andrade dos Santos

## Professor: Gabriel
LinkedIn: 

Este trabalho foi feito para a disciplina de Banco de Dados. O objetivo é criar e manipular um banco de dados de uma biblioteca usando **MariaDB**, colocando em prática alguns comandos SQL.

## Sobre o projeto

O sistema guarda informações de leitores, livros, autores e empréstimos. Assim, é possível saber quais livros existem, quem escreveu cada livro e quais livros foram emprestados para cada leitor.

## Tabelas do banco

- **leitor:** guarda os dados dos leitores, como nome, e-mail, telefone e endereço.
- **livro:** guarda título, ISBN, ano de publicação, categoria e descrição dos livros.
- **autor:** guarda o nome e a nacionalidade dos autores.
- **emprestimo:** registra o leitor e as datas de empréstimo e devolução.
- **item_emprestimo:** relaciona os livros aos empréstimos e registra a situação de cada item.
- **escreve:** relaciona os autores aos livros, permitindo registrar quais autores escreveram cada livro.

## Requisitos e etapas do trabalho

### 1. Modelagem conceitual e lógica

Foram criados os modelos para representar as entidades, seus atributos e relacionamentos. O trabalho utiliza 6 tabelas e relacionamentos entre elas, com chaves primárias e estrangeiras.

Estão nos .pdf localizados em: ./1 e 2 - Modelagem conceitual e lógica

### 2. Criação das tabelas

Na pasta `3 - Criação Tabelas` está o SQL para criar as tabelas com `CREATE TABLE`. Também foram usados:

- `PRIMARY KEY`
- `FOREIGN KEY`
- `AUTO_INCREMENT`
- `NOT NULL`
- `UNIQUE`
- `DEFAULT`
- `CHECK`

### 3. Inserção de dados

Na pasta `4 -Inserts`, os comandos `INSERT INTO` adicionam registros de exemplo nas tabelas.

### 4. Consultas SQL

Na pasta `5 - Consultas`, foram feitos exemplos de consultas com:

- `SELECT`: mostra os registros.
- `WHERE`: filtra os resultados.
- `ORDER BY`: organiza os resultados.
- `LIKE`: procura textos por um padrão.
- `BETWEEN`: consulta valores dentro de um intervalo.
- `IN`: procura valores dentro de uma lista.

### 5. JOINs

Na pasta `6 - Joins`, foram feitos exemplos para consultar dados de tabelas relacionadas, usando `JOIN`, `INNER JOIN`, `LEFT JOIN` e `RIGHT JOIN`.

### 6. ALTER TABLE

Na pasta `7 - Alter Table`, estão os exemplos de alteração da estrutura das tabelas:

- `ADD COLUMN`: pra adicionar uma coluna.
- `MODIFY COLUMN`: pra modificar uma coluna.
- `CHANGE COLUMN`: pra alterar o nome ou a definição de uma coluna.
- `DROP COLUMN`: pra remover uma coluna.

### 7. UPDATE e DELETE

Na pasta `8 - Update e Delete`:

- `UPDATE`: pra alterar informações já cadastradas.
- `DELETE`: exclui registros.

### 8. JSON

O trabalho tinha opção de você usar JSON também, mas eu foquei na parte só do SQL e pulei o JSON.**

### 9. Transações

Na pasta `10 - Commit e Rollback`, foram testados os comandos:

- `START TRANSACTION`
- `COMMIT`
- `ROLLBACK`

### 10. DROP

Na pasta `11 - DROP`, estão os exemplos de:

- `DROP TABLE`
- `DROP DATABASE`

## Como usar

1. Baixar e instalar o XAMPP.
2. Abra o XAMPP, clique em Start no Apache  no MySQL.
3. Quando ficar verde, abra o navegador e acesse: <http://localhost/phpmyadmin>.
4. Crie um banco de dados na lateral esquerda ou vá na aba "SQL" e use `CREATE DATABASE biblioteca;` e depois `USE biblioteca;`
5. Executar o arquivo `criacao_tabelas.sql` da pasta `3 - Criação Tabelas`.
6. Executar os arquivos de inserção da pasta `4 -Inserts`.
7. Testar as consultas e os outros comandos nas pastas seguintes.

Os arquivos `.sql` contêm os comandos utilizados e as imagens mostram os testes realizados.


![](https://i.pinimg.com/736x/98/dc/c5/98dcc53f26e771c06def31b65854e15d.jpg)
