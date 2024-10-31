-- 1. Selecionar todos os livros e seus autores
SELECT L.Titulo, A.Nome AS Autor 
FROM Livros L 
JOIN Autores A ON L.Autor_ID = A.ID;

-- 2. Selecionar todos os exemplares de um livro específico
SELECT E.Numero_Serie, E.Estado 
FROM Exemplares E 
WHERE E.ISBN = '9781234567897';

-- 3. Selecionar todos os pedidos feitos por um cliente específico
SELECT PV.* 
FROM Pedidos_Vendas PV 
WHERE PV.Cliente = 'João da Silva';

-- 4. Listar todos os livros de um determinado gênero
SELECT L.Titulo 
FROM Livros L 
WHERE L.Genero = 'Tecnologia';

-- 6. Selecionar todos os exemplares que estão disponíveis
SELECT E.Numero_Serie, E.ISBN 
FROM Exemplares E 
WHERE E.Estado = 'Disponível';

-- 5. Contar quantos livros existem em cada área de conhecimento
SELECT AC.Detalhes AS Area_Conhecimento, COUNT(L.ISBN) AS Total_Livros 
FROM Livros L 
JOIN Areas_Conhecimento AC ON L.Area_Conhecimento_ID = AC.Codigo  -- A coluna correta de referência
GROUP BY AC.Detalhes;

-- 7. Listar todos os funcionários e seus respectivos departamentos
SELECT F.Nome AS Funcionario, D.Nome AS Departamento 
FROM Funcionarios F 
JOIN Departamentos D ON F.Departamento_ID = D.ID;  -- Supondo que a referência correta seja Departamento_ID

-- 8. Encontrar o total de vendas realizadas em um determinado período
SELECT SUM(PV.Total) AS Total_Vendas 
FROM Pedidos_Vendas PV 
WHERE PV.Data_Transacao BETWEEN '2023-10-01' AND '2023-10-10';

-- 9. Selecionar livros e suas respectivas palavras-chave
SELECT L.Titulo, PK.Descricao AS Palavra_Chave 
FROM Livros L 
JOIN Palavras_Chave PK ON L.ISBN = PK.Codigo;

-- 10. Listar todos os autores e quantos livros cada um escreveu
SELECT A.Nome AS Autor, COUNT(L.ISBN) AS Total_Livros 
FROM Autores A 
LEFT JOIN Livros L ON A.ID = L.Autor_ID 
GROUP BY A.Nome;

-- 11. Encontrar exemplares danificados
SELECT E.Numero_Serie, E.ISBN 
FROM Exemplares E 
WHERE E.Estado = 'Danificado';

-- 12. Listar todos os departamentos e quantos funcionários têm em cada um
SELECT D.Nome AS Departamento, COUNT(F.ID) AS Total_Funcionarios 
FROM Departamentos D 
LEFT JOIN Funcionarios F ON D.ID = F.Departamento_ID 
GROUP BY D.Nome;

-- 13. Encontrar livros de autores de uma determinada nacionalidade
SELECT L.Titulo, A.Nome AS Autor 
FROM Livros L 
JOIN Autores A ON L.Autor_ID = A.ID 
WHERE A.Nacionalidade = 'Brasileira';

-- 14. Contar o número de exemplares para cada livro
SELECT L.Titulo, COUNT(E.Numero_Serie) AS Total_Exemplares 
FROM Livros L 
JOIN Exemplares E ON L.ISBN = E.ISBN 
GROUP BY L.Titulo;

-- 15. Listar todos os pedidos que ainda estão pendentes
SELECT PV.* 
FROM Pedidos_Vendas PV 
WHERE PV.Status_Pedido = 'Pendente';

-- 16. Encontrar o livro mais caro
SELECT L.Titulo, L.Preco 
FROM Livros L 
ORDER BY L.Preco DESC 
LIMIT 1;

-- 17. Listar todos os funcionários que trabalham em tecnologia
SELECT F.Nome AS Funcionario 
FROM Funcionarios F 
JOIN Departamentos D ON F.Departamento_ID = D.ID 
WHERE D.Nome = 'Tecnologia da Informação';

-- 18. Selecionar livros que têm mais de 300 páginas
SELECT L.Titulo 
FROM Livros L 
WHERE L.Numero_Paginas > 300;

-- 19. Encontrar todos os pedidos de um cliente e o total gasto
SELECT PV.Cliente, SUM(PV.Total) AS Total_Gasto 
FROM Pedidos_Vendas PV 
GROUP BY PV.Cliente;

-- 20. Listar todas as palavras-chave e quantos livros estão associados a cada uma
SELECT PK.Descricao, COUNT(L.ISBN) AS Total_Livros 
FROM Palavras_Chave PK 
LEFT JOIN Livros L ON PK.Codigo = L.Palavra_Chave_CODIGO  -- Ajuste para o relacionamento correto
GROUP BY PK.Descricao;
