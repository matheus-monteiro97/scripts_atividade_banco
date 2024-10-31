-- 1. View para listar todos os livros e seus respectivos autores
CREATE VIEW vw_Livros_Autores AS
SELECT L.ISBN, L.Titulo, A.Nome AS Autor
FROM Livros L
JOIN Autores A ON L.Autor_ID = A.ID;

-- 2. View para listar todos os exemplares de livros disponíveis
CREATE VIEW vw_Exemplares_Disponiveis AS
SELECT E.Numero_Serie, E.ISBN, E.Estado
FROM Exemplares E
WHERE E.Estado = 'Disponível';

-- 3. View para listar todos os pedidos de vendas com seus detalhes
CREATE VIEW vw_Pedidos_Vendas_Detalhes AS
SELECT PV.Cliente, PV.Data_Transacao, PV.Total, PV.Status_Pedido
FROM Pedidos_Vendas PV;

-- 4. View para contar o total de livros em cada área de conhecimento
CREATE VIEW vw_Total_Livros_Area AS
SELECT AC.Detalhes AS Area_Conhecimento, COUNT(L.ISBN) AS Total_Livros
FROM Livros L
JOIN Areas_Conhecimento AC ON L.Area_Conhecimento_ID = AC.Codigo
GROUP BY AC.Detalhes;

-- 5. View para listar todos os funcionários e seus respectivos departamentos
CREATE VIEW vw_Funcionarios_Departamentos AS
SELECT F.Nome AS Funcionario, D.Nome AS Departamento
FROM Funcionarios F
JOIN Departamentos D ON F.Departamento_ID = D.ID;

-- 6. View para encontrar o total de vendas realizadas em um determinado período
CREATE VIEW vw_Total_Vendas_Periodo AS
SELECT SUM(PV.Total) AS Total_Vendas
FROM Pedidos_Vendas PV
WHERE PV.Data_Transacao BETWEEN '2023-01-01' AND '2023-12-31';

-- 7. View para listar todos os livros e suas respectivas palavras-chave
-- CREATE VIEW vw_Livros_Palavras_Chave AS
SELECT L.Titulo, PK.Descricao AS Palavra_Chave
FROM Livros L
JOIN Palavras_Chave PK ON L.ISBN = PK.ISBN;

-- 8. View para contar o número de exemplares para cada livro
CREATE VIEW vw_Contagem_Exemplares AS
SELECT L.Titulo, COUNT(E.Numero_Serie) AS Total_Exemplares
FROM Livros L
JOIN Exemplares E ON L.ISBN = E.ISBN
GROUP BY L.Titulo;

-- 9. View para listar todos os pedidos que ainda estão pendentes
CREATE VIEW vw_Pedidos_Pendentes AS
SELECT PV.*
FROM Pedidos_Vendas PV
WHERE PV.Status_Pedido = 'Pendente';

-- 10. View para listar todas as palavras-chave e quantos livros estão associados a cada uma
CREATE VIEW vw_Palavras_Chave_Livros AS
SELECT PK.Descricao AS Palavra_Chave, COUNT(L.ISBN) AS Total_Livros
FROM Palavras_Chave PK
LEFT JOIN Livros L ON PK.Codigo = L.Area_Conhecimento_ID
GROUP BY PK.Descricao;

-- 11. View para listar livros por gênero
CREATE VIEW vw_Livros_por_Genero AS
SELECT L.Genero, COUNT(L.ISBN) AS Total_Livros
FROM Livros L
GROUP BY L.Genero;

-- 12. View para listar todos os autores e quantos livros cada um escreveu
CREATE VIEW vw_Autores_Total_Livros AS
SELECT A.Nome AS Autor, COUNT(L.ISBN) AS Total_Livros
FROM Autores A
LEFT JOIN Livros L ON A.ID = L.Autor_ID
GROUP BY A.Nome;

-- 13. View para encontrar livros de um determinado autor
CREATE VIEW vw_Livros_por_Autor AS
SELECT A.Nome AS Autor, L.Titulo
FROM Autores A
JOIN Livros L ON A.ID = L.Autor_ID
WHERE A.Nome = 'Nome do Autor';  -- Troque pelo nome do autor desejado

-- 14. View para listar exemplares danificados
CREATE VIEW vw_Exemplares_Danificados AS
SELECT E.Numero_Serie, E.ISBN
FROM Exemplares E
WHERE E.Estado = 'Danificado';

-- 15. View para listar todos os livros publicados em um determinado ano
CREATE VIEW vw_Livros_Publicados_Ano AS
SELECT L.Titulo, L.Data_Publicacao
FROM Livros L
WHERE YEAR(L.Data_Publicacao) = 2023;  -- Troque pelo ano desejado

-- 16. View para listar os funcionários que trabalham em um departamento específico
CREATE VIEW vw_Funcionarios_por_Departamento AS
SELECT F.Nome AS Funcionario, D.Nome AS Departamento
FROM Funcionarios F
JOIN Departamentos D ON F.Departamento_ID = D.ID
WHERE D.Nome = 'Nome do Departamento';  -- Troque pelo nome do departamento desejado

-- 17. View para listar os livros que têm mais de X páginas
CREATE VIEW vw_Livros_Mais_X_Paginas AS
SELECT L.Titulo
FROM Livros L
WHERE L.Numero_Paginas > 300;  -- Troque pelo número de páginas desejado

-- 18. View para listar o livro mais caro
CREATE VIEW vw_Livro_Mais_Caro AS
SELECT L.Titulo, L.Preco
FROM Livros L
ORDER BY L.Preco DESC
LIMIT 1;

-- 19. View para contar o total de pedidos por cliente
CREATE VIEW vw_Total_Pedidos_por_Cliente AS
SELECT PV.Cliente, COUNT(PV.Cliente) AS Total_Pedidos
FROM Pedidos_Vendas PV
GROUP BY PV.Cliente;

-- 20. View para listar exemplares por localização
CREATE VIEW vw_Exemplares_por_Localizacao AS
SELECT E.Numero_Serie, E.ISBN, E.Localizacao
FROM Exemplares E
ORDER BY E.Localizacao;
