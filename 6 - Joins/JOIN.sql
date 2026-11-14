SELECT 
    e.idEmprestimo,
    le.nome AS nome_leitor,
    li.titulo AS titulo_livro,
    e.data_emprestimo,
    ie.status
FROM emprestimo e
JOIN leitor le ON e.idLeitor = le.idLeitor
JOIN item_emprestimo ie ON e.idEmprestimo = ie.idEmprestimo
JOIN livro li ON ie.idLivro = li.idLivro;