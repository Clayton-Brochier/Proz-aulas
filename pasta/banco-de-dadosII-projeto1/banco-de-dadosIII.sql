-- Criar o banco de dados
CREATE DATABASE EmpresaGames;

-- Usar o banco de dados
USE EmpresaGames;

-- Tabela de Jogos
CREATE TABLE Jogos (
    JogoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Plataforma VARCHAR(50),
    Genero VARCHAR(50),
    Lancamento DATE,
    Preco DECIMAL(10, 2)
);

-- Tabela de Consoles
CREATE TABLE Consoles (
    ConsoleID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Fabricante VARCHAR(50),
    Lancamento DATE,
    Preco DECIMAL(10, 2)
);

-- Tabela de Acessórios
CREATE TABLE Acessorios (
    AcessorioID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Tipo VARCHAR(50),
    Compatibilidade VARCHAR(100),
    Preco DECIMAL(10, 2)
);

DELIMITER //

CREATE PROCEDURE RelatorioQuantidadeProdutosCompradosPorDia()
BEGIN
    SELECT DataCompra, COUNT(CompraID) AS QuantidadeProdutosComprados
    FROM Compras
    GROUP BY DataCompra;
END //

DELIMITER ;
