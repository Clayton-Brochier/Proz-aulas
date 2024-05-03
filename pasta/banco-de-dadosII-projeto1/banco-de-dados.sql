-- Criar a base de dados 

CREATE DATABASE ExemploDB; 

  

-- Usar a base de dados criada 

USE ExemploDB; 

  

-- Criar tabela de clientes 

CREATE TABLE Clientes ( 

    ClienteID INT PRIMARY KEY, 

    Nome VARCHAR(50), 

    Email VARCHAR(50) 

); 

  

-- Criar tabela de pedidos 

CREATE TABLE Pedidos ( 

    PedidoID INT PRIMARY KEY, 

    ClienteID INT, 

    DataPedido DATE, 

    Valor DECIMAL(10, 2), 

    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID) 

); 

  

-- Criar tabela de itens do pedido 

CREATE TABLE ItensPedido ( 

    ItemID INT PRIMARY KEY, 

    PedidoID INT, 

    Produto VARCHAR(50), 

    Quantidade INT, 

    PrecoUnitario DECIMAL(10, 2), 

    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID) 

); 

  

-- Inserir dados na tabela de clientes 

INSERT INTO Clientes (ClienteID, Nome, Email) 

VALUES  

    (1, 'João', 'joao@email.com'), 

    (2, 'Maria', 'maria@email.com'); 

  

-- Inserir dados na tabela de pedidos 

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, Valor) 

VALUES 

    (101, 1, '2024-04-01', 100.00), 

    (102, 2, '2024-04-02', 150.00); 

  

-- Inserir dados na tabela de itens do pedido 

INSERT INTO ItensPedido (ItemID, PedidoID, Produto, Quantidade, PrecoUnitario) 

VALUES 

    (1, 101, 'Camiseta', 2, 25.00), 

    (2, 101, 'Calça', 1, 40.00), 

    (3, 102, 'Tênis', 1, 80.00); 

 

-- Consulta para listar os pedidos com os nomes dos clientes 

SELECT Pedidos.PedidoID, Clientes.Nome, Pedidos.DataPedido, Pedidos.Valor 

FROM Pedidos 

INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID; 

  

-- Consulta para listar os itens de cada pedido com os nomes dos produtos 

SELECT Pedidos.PedidoID, ItensPedido.Produto, ItensPedido.Quantidade, ItensPedido.PrecoUnitario 

FROM Pedidos 

INNER JOIN ItensPedido ON Pedidos.PedidoID = ItensPedido.PedidoID; 

  

-- Consulta para listar os clientes com seus pedidos e itens 

SELECT Clientes.Nome, Pedidos.PedidoID, ItensPedido.Produto, ItensPedido.Quantidade, ItensPedido.PrecoUnitario 

FROM Clientes 

LEFT JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID 

LEFT JOIN ItensPedido ON Pedidos.PedidoID = ItensPedido.PedidoID; 