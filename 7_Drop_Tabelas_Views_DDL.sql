-- Destruir todas as views
DROP VIEW IF EXISTS 
    vw_Livros_Autores,
    vw_Exemplares_Disponiveis,
    vw_Pedidos_Vendas_Detalhes,
    vw_Total_Livros_Area,
    vw_Funcionarios_Departamentos,
    vw_Total_Vendas_Periodo,
    vw_Livros_Palavras_Chave,
    vw_Contagem_Exemplares,
    vw_Pedidos_Pendentes,
    vw_Palavras_Chave_Livros,
    vw_Livros_por_Genero,
    vw_Autores_Total_Livros,
    vw_Livros_por_Autor,
    vw_Exemplares_Danificados,
    vw_Livros_Publicados_Ano,
    vw_Funcionarios_por_Departamento,
    vw_Livros_Mais_X_Paginas,
    vw_Livro_Mais_Caro,
    vw_Total_Pedidos_por_Cliente,
    vw_Exemplares_por_Localizacao;

-- Destruir tabelas com dependências primeiro
DROP TABLE IF EXISTS 
    Livros_Palavras_Chave,  -- Remove a tabela de relacionamento primeiro
    Exemplares,              -- Remove exemplares que não têm dependências
    Pedidos_Vendas,          -- Remove pedidos e vendas
    Funcionarios,            -- Remove funcionários
    Livros,                  -- Remove livros
    Palavras_Chave,          -- Remove palavras-chave
    Areas_Conhecimento,      -- Remove áreas de conhecimento
    Autores,                 -- Remove autores
    Departamentos;           -- Remove departamentos
