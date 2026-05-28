CREATE DATABASE EscolaDB;
USE EscolaDB;

CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (100),
    cidade VARCHAR (100),
    idade INT
);

CREATE TABLE Cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR (100),
    carga_horaria INT
);

CREATE TABLE Matriculas (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_curso INT,
    nota DECIMAL (4, 2),
    faltas INT,
    FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno),
    FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso)
);

INSERT INTO Alunos (nome, cidade, idade)VALUES
('Carlos','São Paulo',18),
('Mariana','Curitiba',22),
('João','Florianópolis',19),
('Fernanda','São Paulo',25),
('Lucas','Rio de Janeiro',20),
('Patricia','Curitiba',21),
('Ana','Porto Alegre',23),
('Bruno','São Paulo',24);

INSERT INTO Cursos (nome_curso, carga_horaria)VALUES
('Python',40),
('Banco de Dados',60),
('Java',80),
('Data Science',100);

INSERT INTO Matriculas (id_aluno, id_curso, nota, faltas)VALUES
(1,1,8.5,2),
(1,2,7.0,5),
(2,1,9.5,1),
(2,4,8.0,4),
(3,2,6.5,6),
(3,3,7.5,3),
(4,4,9.0,0),
(5,1,5.5,10),
(5,2,6.0,7),
(6,3,8.5,2),
(7,4,7.0,5),
(8,2,9.5,1);


-- Básicas
SELECT * FROM Alunos;

SELECT nome FROM Alunos;

SELECT * FROM Cursos;

SELECT nome, cidade
FROM Alunos
WHERE cidade = 'São Paulo';

SELECT nome, idade
FROM Alunos
WHERE idade > 20;

SELECT *
FROM Cursos
WHERE carga_horaria > 50;

SELECT nome, idade
FROM Alunos
WHERE idade IN (18,19,20,21,22);

SELECT nome, cidade
FROM Alunos
WHERE cidade = 'Curitiba';

SELECT nome, idade
FROM Alunos
WHERE idade < 21;

SELECT * FROM Matriculas;

-- Intermediárias

SELECT id_aluno, nota
FROM Matriculas
WHERE nota > 8;

SELECT id_aluno, faltas
FROM Matriculas
WHERE faltas > 5;

SELECT nome_curso, carga_horaria
FROM Cursos
WHERE carga_horaria > 80;

SELECT nome, cidade
FROM Alunos
WHERE cidade <> 'São Paulo';

SELECT nome
FROM Alunos
WHERE nome LIKE 'A%';

SELECT nome
FROM Alunos
WHERE nome LIKE '%a';

SELECT nome_curso
FROM Cursos
WHERE nome_curso LIKE '%Dados%';

SELECT id_aluno, id_curso, nota
FROM Matriculas
WHERE nota BETWEEN 7 AND 9;

SELECT nome, idade
FROM Alunos
WHERE idade = 20;

SELECT nome_curso, carga_horaria
FROM Cursos
WHERE carga_horaria <= 60;

SELECT cidade,
    COUNT (cidade) AS quantidade
FROM Alunos
GROUP BY cidade;