-- 1. View para livros disponíveis e seus respectivos autores
CREATE VIEW vw_Livros_Autores AS
SELECT L.Titulo, A.Nome AS Autor
FROM Livros L
JOIN Autores A ON L.Autor_ID = A.ID;

-- 2. View para funcionários alocados em cada departamento
CREATE VIEW vw_Funcionarios_Departamentos AS
SELECT F.Nome AS Funcionario, D.Nome AS Departamento
FROM Funcionarios F
JOIN Departamentos D ON F.Departamento_ID = D.ID;

-- 3. View para total de exemplares disponíveis por livro
CREATE VIEW vw_Total_Exemplares_Disponiveis AS
SELECT L.Titulo, COUNT(E.Numero_Serie) AS Total_Exemplares
FROM Livros L
JOIN Exemplares E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Disponível'
GROUP BY L.Titulo;

-- 4. View para pedidos realizados por cada cliente
CREATE VIEW vw_Pedidos_Clientes AS
SELECT C.Nome AS Cliente, P.Data_Transacao, P.Status_Pedido
FROM Pedidos_Vendas P
JOIN Clientes C ON P.Cliente_ID = C.ID;

-- 5. View para autores com livros publicados em uma área de conhecimento específica
CREATE VIEW vw_Autores_Livros_Area AS
SELECT A.Nome AS Autor, L.Titulo
FROM Autores A
JOIN Livros L ON A.ID = L.Autor_ID
WHERE L.Area_Conhecimento_ID = 1; -- Exemplo: 1

-- 6. View para livros reservados atualmente
CREATE VIEW vw_Livros_Reservados AS
SELECT L.Titulo
FROM Livros L
JOIN Exemplares E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Reservado';

-- 7. View para média de preço dos livros em cada departamento
CREATE VIEW vw_Media_Preco_Departamento AS
SELECT D.Nome AS Departamento, AVG(L.Preco) AS Media_Preco
FROM Livros L
JOIN Departamentos D ON L.Departamento_ID = D.ID
GROUP BY D.Nome;

-- 8. View para pedidos pendentes e cliente associado
CREATE VIEW vw_Pedidos_Pendentes AS
SELECT P.ID AS Pedido, C.Nome AS Cliente
FROM Pedidos_Vendas P
JOIN Clientes C ON P.Cliente_ID = C.ID
WHERE P.Status_Pedido = 'Pendente';

-- 9. View para livros com palavras-chave específicas
CREATE VIEW vw_Livros_Palavras_Chave AS
SELECT L.Titulo, P.Descricao AS Palavra_Chave
FROM Livros L
JOIN Livros_Palavras_Chave LPC ON L.ISBN = LPC.Livro_ISBN
JOIN Palavras_Chave P ON LPC.Palavra_Chave_Codigo = P.Codigo
WHERE P.Descricao = 'Ficção'; -- Exemplo de palavra-chave

-- 10. View para lista de clientes e número de pedidos
CREATE VIEW vw_Clientes_Pedidos AS
SELECT C.Nome AS Cliente, COUNT(P.ID) AS Total_Pedidos
FROM Clientes C
LEFT JOIN Pedidos_Vendas P ON C.ID = P.Cliente_ID
GROUP BY C.Nome;

