-- Criar o banco de dados
CREATE DATABASE Locadora;

-- Usar o banco de dados Locadora
USE Locadora;

-- Criar tabela de Diretores
CREATE TABLE Diretores (
    DiretorID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Nacionalidade VARCHAR(50)
);

-- Criar tabela de Filmes
CREATE TABLE Filmes (
    FilmeID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(200),
    AnoLancamento INT,
    DiretorID INT,
    FOREIGN KEY (DiretorID) REFERENCES Diretores(DiretorID)
);

-- Criar tabela de Locações
CREATE TABLE Locacoes (
    LocacaoID INT PRIMARY KEY AUTO_INCREMENT,
    FilmeID INT,
    DataLocacao DATE,
    DataDevolucao DATE,
    FOREIGN KEY (FilmeID) REFERENCES Filmes(FilmeID)
);

-- Criar trigger para atualizar a DataDevolucao ao inserir uma nova locação
DELIMITER //
CREATE TRIGGER AtualizarDataDevolucao
BEFORE INSERT ON Locacoes
FOR EACH ROW
BEGIN
    DECLARE data_locacao DATE;
    DECLARE data_devolucao DATE;

    SET data_locacao = NEW.DataLocacao;
    SET data_devolucao = DATE_ADD(data_locacao, INTERVAL 7 DAY);

    SET NEW.DataDevolucao = data_devolucao;
END;
//
DELIMITER ;
