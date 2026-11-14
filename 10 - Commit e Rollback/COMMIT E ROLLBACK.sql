START TRANSACTION;

UPDATE leitor 
SET email = 'jsilva@gmail.com' 
WHERE idLeitor = 3;

SELECT * FROM leitor;

ROLLBACK;

SELECT * FROM leitor;

START TRANSACTION;

UPDATE leitor 
SET email = 'joaoslv@gmail.com' 
WHERE idLeitor = 3;

SELECT * FROM leitor;

COMMIT;