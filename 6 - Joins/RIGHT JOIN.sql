SELECT 
    e.idEmprestimo,
    e.data_emprestimo,
    le.nome AS nome_leitor
FROM leitor le
RIGHT JOIN emprestimo e ON le.idLeitor = e.idLeitor;