SELECT 
    le.idLeitor,
    le.nome AS nome_leitor,
    e.idEmprestimo,
    e.data_emprestimo
FROM leitor le
LEFT JOIN emprestimo e ON le.idLeitor = e.idLeitor;