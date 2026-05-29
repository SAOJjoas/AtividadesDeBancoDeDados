CREATE DATABASE Livro;
USE Livro;
DROP TABLE IF EXISTS livro;

CREATE TABLE livro (
titulo VARCHAR(200) NOT NULL,
lancamento DATE,
idioma CHAR(2),
isbn VARCHAR(13) PRIMARY KEY UNIQUE,
capa BLOB
);