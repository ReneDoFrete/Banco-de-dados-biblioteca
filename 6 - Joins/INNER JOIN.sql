SELECT 
    l.titulo AS titulo_livro, 
    a.nomeAutor AS nome_autor 
FROM livro l
INNER JOIN escreve esc ON l.idLivro = esc.idLivro
INNER JOIN autor a ON esc.idAutor = a.idAutor;