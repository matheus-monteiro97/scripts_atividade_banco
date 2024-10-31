-- Livros disponíveis e os autores
SELECT L.Titulo, A.Nome AS Autor
FROM Livros L
JOIN Autores A ON L.Autor_ID = A.ID;

-- Funcionários em cada departamento
SELECT F.Nome AS Funcionario, D.Nome AS Departamento
FROM Funcionarios F
JOIN Departamentos D ON F.Departamento_ID = D.ID;

-- Exemplares disponíveis por livro
SELECT L.Titulo, COUNT(E.Numero_Serie) AS Total_Exemplares
FROM Livros L
JOIN Exemplares E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Disponível'
GROUP BY L.Titulo;

-- Pedidos por cada cliente
SELECT C.Nome AS Cliente, P.Data_Transacao, P.Status_Pedido
FROM Pedidos_Vendas P
JOIN Clientes C ON P.Cliente_ID = C.ID;

-- Autores com livros publicados em uma área de conhecimento 
SELECT A.Nome AS Autor, L.Titulo
FROM Autores A
JOIN Livros L ON A.ID = L.Autor_ID
WHERE L.Area_Conhecimento_ID = 1;

-- Livros reservados
SELECT L.Titulo
FROM Livros L
JOIN Exemplares E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Reservado';

-- Média de preço dos livros em cada departamento
SELECT D.Nome AS Departamento, AVG(L.Preco) AS Media_Preco
FROM Livros L
JOIN Departamentos D ON L.Departamento_ID = D.ID
GROUP BY D.Nome;

-- Pedidos pendentes
SELECT P.ID AS Pedido, C.Nome AS Cliente
FROM Pedidos_Vendas P
JOIN Clientes C ON P.Cliente_ID = C.ID
WHERE P.Status_Pedido = 'Pendente';

-- Livros com palavras-chave específicas
SELECT L.Titulo, P.Descricao AS Palavra_Chave
FROM Livros L
JOIN Livros_Palavras_Chave LPC ON L.ISBN = LPC.Livro_ISBN
JOIN Palavras_Chave P ON LPC.Palavra_Chave_Codigo = P.Codigo
WHERE P.Descricao = 'Ficção'; -- Exemplo de palavra-chave

-- Lista de clientes e número de pedidos
SELECT C.Nome AS Cliente, COUNT(P.ID) AS Total_Pedidos
FROM Clientes C
LEFT JOIN Pedidos_Vendas P ON C.ID = P.Cliente_ID
GROUP BY C.Nome;

-- Livros publicados depois uma data específica
SELECT L.Titulo
FROM Livros L
WHERE L.Data_Publicacao > '2020-01-01';

-- Exemplares danificados
SELECT E.Numero_Serie, L.Titulo
FROM Exemplares E
JOIN Livros L ON E.ISBN = L.ISBN
WHERE E.Estado = 'Danificado';

-- Total de vendas por departamento
SELECT D.Nome AS Departamento, SUM(P.Total) AS Total_Vendas
FROM Pedidos_Vendas P
JOIN Clientes C ON P.Cliente_ID = C.ID
JOIN Livros L ON L.ISBN = (SELECT ISBN FROM Exemplares WHERE Numero_Serie = (SELECT Numero_Serie FROM Detalhes_Pedido WHERE Pedido_ID = P.ID))
JOIN Departamentos D ON L.Departamento_ID = D.ID
GROUP BY D.Nome;

-- Departamentos com mais de um funcionário
SELECT D.Nome AS Departamento, COUNT(F.ID) AS Total_Funcionarios
FROM Departamentos D
JOIN Funcionarios F ON D.ID = F.Departamento_ID
GROUP BY D.Nome
HAVING COUNT(F.ID) > 1;

-- Autor mais publicado
SELECT A.Nome AS Autor, COUNT(L.ISBN) AS Total_Livros
FROM Autores A
JOIN Livros L ON A.ID = L.Autor_ID
GROUP BY A.Nome
ORDER BY Total_Livros DESC
LIMIT 1;

-- Livros mais caros de ficção
SELECT L.Titulo, L.Preco
FROM Livros L
WHERE L.Genero = 'Ficção'
ORDER BY L.Preco DESC
LIMIT 5;

-- Pedidos finalizados em 30 dias
SELECT P.ID AS Pedido, P.Data_Transacao
FROM Pedidos_Vendas P
WHERE P.Status_Pedido = 'Finalizado' AND P.Data_Transacao >= CURDATE() - INTERVAL 30 DAY;

-- Exemplares de um livro específico
SELECT E.Localizacao
FROM Exemplares E
WHERE E.ISBN = '9783161484100';

-- Livros com a palavra-chave igual
SELECT L.Titulo
FROM Livros L
JOIN Livros_Palavras_Chave LPC ON L.ISBN = LPC.Livro_ISBN
WHERE LPC.Palavra_Chave_Codigo IN (SELECT Palavra_Chave_Codigo FROM Livros_Palavras_Chave WHERE Livro_ISBN = '9783161484101'); -- Exemplo de ISBN

-- Clientes que não fizeram pedidos
SELECT C.Nome AS Cliente
FROM Clientes C
LEFT JOIN Pedidos_Vendas P ON C.ID = P.Cliente_ID
WHERE P.ID IS NULL;
