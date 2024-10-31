-- Remoção do modo seguro
SET SQL_SAFE_UPDATES = 0;

-- Atualizações (UPDATE)
-- Atualizar o estado de um exemplar
UPDATE Exemplares SET Estado = 'Reservado' WHERE ISBN = '9781234567897';

-- Atualizar o preço de um livro
UPDATE Livros SET Preco = 50.00 WHERE ISBN = '9782345678901';

-- Atualizar a descrição de um departamento
UPDATE Departamentos SET Descricao = 'Gerenciamento de finanças e contabilidade e auditoria' WHERE Nome = 'Financeiro';

-- Atualizar o cargo de um funcionário
UPDATE Funcionarios SET Cargo = 'Diretor Financeiro' WHERE Nome = 'Pedro Rocha';

-- Atualizar a biografia de um autor
UPDATE Autores SET Biografia = 'Nova biografia do Autor A' WHERE Nome = 'Autor A';

-- Atualizar o estado de um pedido
UPDATE Pedidos_Vendas SET Status_Pedido = 'Finalizado' WHERE Cliente = 'João da Silva';

-- Atualizar a localização de um exemplar
UPDATE Exemplares SET Localizacao = 'Prateleira 11' WHERE ISBN = '9784567890123';

-- Atualizar o nome de um funcionário
UPDATE Funcionarios SET Nome = 'Carlos Alberto Silva' WHERE Nome = 'Carlos Silva';

-- Atualizar o gênero de um livro
UPDATE Livros SET Genero = 'Ficção Dramática' WHERE ISBN = '9785678901234';

-- Atualizar a data de reserva de um exemplar
UPDATE Exemplares SET Data_Reserva = '2023-10-31' WHERE ISBN = '9782345678901';

-- Deleções (DELETE)
-- Deletar um livro pelo ISBN
DELETE FROM Livros WHERE ISBN = '9788901234567';

-- Deletar um autor pelo nome
DELETE FROM Autores WHERE Nome = 'Autor J';

-- Deletar um funcionário pelo ID
DELETE FROM Funcionarios WHERE Nome = 'Roberta Mendes';

-- Deletar um exemplar pelo número de série
DELETE FROM Exemplares WHERE ISBN = '9786789012345';

-- Deletar um pedido pelo cliente
DELETE FROM Pedidos_Vendas WHERE Cliente = 'Patrícia Alves';

-- Deletar uma palavra-chave pelo código
DELETE FROM Palavras_Chave WHERE Descricao = 'Terror';

-- Deletar um departamento pelo nome
DELETE FROM Departamentos WHERE Nome = 'Pesquisa de Mercado';

-- Deletar uma área de conhecimento pelo código
DELETE FROM Areas_Conhecimento WHERE Detalhes = 'Educação';

-- Deletar todos os exemplares que estão danificados
DELETE FROM Exemplares WHERE Estado = 'Danificado';

-- Deletar todos os pedidos com status 'Cancelado'
DELETE FROM Pedidos_Vendas WHERE Status_Pedido = 'Cancelado';