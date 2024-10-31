ALTER TABLE Funcionarios 
ADD Email VARCHAR(100);

ALTER TABLE Funcionarios 
MODIFY Telefone VARCHAR(20);

ALTER TABLE Livros 
ADD Editor VARCHAR(100);

ALTER TABLE Departamentos 
DROP COLUMN Descricao;

ALTER TABLE Exemplares 
ADD Data_Exclusao DATE;

ALTER TABLE Exemplares 
MODIFY Estado ENUM('Disponível', 'Reservado', 'Danificado', 'Perdido');

ALTER TABLE Detalhes_Pedido 
ADD Data_Pedido DATE NOT NULL;

-- Cria um novo índice na tabela Livros para melhorar a busca pelo título
CREATE INDEX idx_titulo ON Livros(Titulo);

ALTER TABLE Detalhes_Pedido 
ADD CONSTRAINT fk_cliente 
FOREIGN KEY (Cliente_ID) REFERENCES Clientes(ID) ON DELETE CASCADE;

ALTER TABLE Livros 
MODIFY Preco DECIMAL(10, 2) NULL;

