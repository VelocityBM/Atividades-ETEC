CREATE DATABASE Loja;

USE Loja;

CREATE TABLE Cliente (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(10) NOT NULL,
    Sobrenome VARCHAR(20),
    Data DATE,
    Idade INT,
    CPF INT NOT NULL,
    Sexo VARCHAR(10) NOT NULL
);

ALTER TABLE Cliente ADD COLUMN Salario DECIMAL(7, 2);
ALTER TABLE Cliente CHANGE COLUMN Data DtNascto DATE;

INSERT INTO Cliente (Codigo, Nome, Sobrenome, DtNascto, Idade, CPF, Sexo, Salario) VALUES
(1, 'Leo', 'Pires', '1980-10-10', 34, 123456789, 'M', 540.00),
(2, 'Leoncio', 'Silva', '1982-05-01', 32, 987654321, 'M', 1500.00),
(3, 'Leandro', 'Souza', '1960-12-30', 54, 654987321, 'M', 2000.00),
(4, 'Ana', 'Felix', '1962-11-25', 52, 321456789, 'F', 2300.00);

DESC Cliente;

SELECT Codigo, Nome, Idade FROM Cliente;
SELECT Salario, Idade FROM Cliente WHERE Nome = 'Leo';

ALTER TABLE Cliente DROP COLUMN Idade;
ALTER TABLE Cliente MODIFY CPF VARCHAR(11);

SELECT * FROM Cliente WHERE Salario > 1000 ORDER BY Salario DESC;

ALTER TABLE Cliente ADD COLUMN Bairro CHAR(20) NOT NULL;

INSERT INTO Cliente (Codigo, Nome, Sobrenome, DtNascto, CPF, Sexo, Salario, Bairro) VALUES (5, 'Paula', 'Castro', '1963-11-30', '221456789', 'F', 680.00, 'Ingá');

ALTER TABLE Cliente MODIFY Sexo CHAR(1);

UPDATE Cliente SET Bairro = 'Centro' WHERE Codigo = 1;
UPDATE Cliente SET Bairro = 'Centro' WHERE Codigo = 2;
UPDATE Cliente SET Bairro = 'Icaraí' WHERE Codigo = 3;

SELECT DISTINCT Bairro FROM Cliente;
SELECT Nome, Sobrenome, CPF FROM Cliente WHERE Nome LIKE 'Leo%';
SELECT MAX(Salario) AS MaiorSalario FROM Cliente;

ALTER TABLE Cliente ADD COLUMN Idade INT;

UPDATE Cliente SET Idade = 34 WHERE Codigo = 1;
UPDATE Cliente SET Idade = 32 WHERE Codigo = 2;
UPDATE Cliente SET Idade = 54 WHERE Codigo = 3;
UPDATE Cliente SET Idade = 52 WHERE Codigo = 4;

SELECT Bairro, MIN(Idade) AS MenorIdade FROM Cliente GROUP BY Bairro;

SELECT COUNT(*) AS Quantidade FROM Cliente WHERE Nome LIKE 'Le%';
