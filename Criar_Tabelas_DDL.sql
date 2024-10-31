CREATE DATABASE livraria;
USE livraria;

CREATE TABLE Departamentos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Responsavel VARCHAR(100),
    Descricao VARCHAR(100)
);

CREATE TABLE Funcionarios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Telefone VARCHAR(20),
    Endereco TEXT,
    Departamento_ID INT,
    FOREIGN KEY (Departamento_ID) REFERENCES Departamentos(ID) ON DELETE SET NULL
);

CREATE TABLE Autores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Biografia TEXT,
    Nacionalidade VARCHAR(50),
    Data_Nascimento DATE
);

CREATE TABLE Areas_Conhecimento (
    Codigo INT AUTO_INCREMENT PRIMARY KEY,
    Descricao TEXT
);

CREATE TABLE Livros (
    ISBN VARCHAR(13) PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Autor_ID INT NOT NULL,
    Departamento_ID INT,
    Area_Conhecimento_ID INT,
    Data_Publicacao DATE,
    Genero VARCHAR(50),
    Numero_Paginas INT,
    Preco DECIMAL(10, 2),
    FOREIGN KEY (Autor_ID) REFERENCES Autores(ID) ON DELETE CASCADE,
    FOREIGN KEY (Departamento_ID) REFERENCES Departamentos(ID) ON DELETE SET NULL,
    FOREIGN KEY (Area_Conhecimento_ID) REFERENCES Areas_Conhecimento(Codigo) ON DELETE SET NULL
);

CREATE TABLE Exemplares (
    Numero_Serie INT AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(13) NOT NULL,
    Estado ENUM('Disponível', 'Reservado', 'Danificado', 'Perdido') NOT NULL,
    Localizacao VARCHAR(100),
    FOREIGN KEY (ISBN) REFERENCES Livros(ISBN) ON DELETE CASCADE
);

CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Telefone VARCHAR(20),
    Endereco TEXT
);

CREATE TABLE Pedidos_Vendas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Cliente_ID INT,
    Data_Transacao DATE NOT NULL,
    Status_Pedido ENUM('Pendente', 'Finalizado', 'Cancelado') DEFAULT 'Pendente',
    Total DECIMAL(10, 2),
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(ID) ON DELETE CASCADE
);

CREATE TABLE Detalhes_Pedido (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Pedido_ID INT,
    Numero_Serie INT,
    Quantidade INT NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    Cliente_ID INT,
    FOREIGN KEY (Pedido_ID) REFERENCES Pedidos_Vendas(ID) ON DELETE CASCADE,
    FOREIGN KEY (Numero_Serie) REFERENCES Exemplares(Numero_Serie) ON DELETE CASCADE,
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(ID) ON DELETE CASCADE
);

CREATE TABLE Palavras_Chave (
    Codigo INT AUTO_INCREMENT PRIMARY KEY,
    Descricao VARCHAR(100)
);

CREATE TABLE Livros_Palavras_Chave (
    Livro_ISBN VARCHAR(13),
    Palavra_Chave_Codigo INT,
    PRIMARY KEY (Livro_ISBN, Palavra_Chave_Codigo),
    FOREIGN KEY (Livro_ISBN) REFERENCES Livros(ISBN) ON DELETE CASCADE,
    FOREIGN KEY (Palavra_Chave_Codigo) REFERENCES Palavras_Chave(Codigo) ON DELETE CASCADE
);
