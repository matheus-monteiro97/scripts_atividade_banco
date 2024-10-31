SET SQL_SAFE_UPDATES = 0;

UPDATE Funcionarios
SET Email = 'novoemail@exemplo.com'
WHERE ID = 1;

UPDATE Funcionarios
SET Cargo = 'Gerente'
WHERE ID = 2;

UPDATE Areas_Conhecimento
SET Descricao = 'Ficção Científica'
WHERE Codigo = 1;

DELETE FROM Autores
WHERE ID = 3;

UPDATE Livros
SET Preco = 24.90
WHERE ISBN = '9783161484100';

DELETE FROM Exemplares
WHERE Numero_Serie = 5;

UPDATE Clientes
SET Nome = 'Carlos Silva'
WHERE ID = 4;

DELETE FROM Pedidos_Vendas
WHERE ID = 2;

UPDATE Pedidos_Vendas
SET Status_Pedido = 'Finalizado'
WHERE ID = 3;

DELETE FROM Detalhes_Pedido
WHERE ID = 7;

UPDATE Exemplares
SET Localizacao = 'Estante 2 - Seção A'
WHERE Numero_Serie = 3;

UPDATE Livros
SET Data_Publicacao = '1850-01-01'
WHERE ISBN = '9783161484101';

DELETE FROM Clientes
WHERE ID = 6;

UPDATE Funcionarios
SET Telefone = '98765-4321'
WHERE ID = 5;

DELETE FROM Palavras_Chave
WHERE Codigo = 9;

UPDATE Detalhes_Pedido
SET Quantidade = 3
WHERE ID = 8;

UPDATE Livros
SET Genero = 'Aventura'
WHERE ISBN = '9783161484102';

DELETE FROM Exemplares
WHERE Estado = 'Perdido';

UPDATE Departamentos
SET Nome = 'Literatura Clássica'
WHERE ID = 1;

DELETE FROM Pedidos_Vendas
WHERE Data_Transacao < '2024-01-01';