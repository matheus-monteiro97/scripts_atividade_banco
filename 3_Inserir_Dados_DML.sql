-- Inserindo Departamentos
INSERT INTO Departamentos (Nome, Descricao) VALUES
('Marketing', 'Responsável pelas estratégias de divulgação'),
('Financeiro', 'Gerenciamento de finanças e contabilidade'),
('Editorial', 'Responsável pela edição dos livros'),
('Logística', 'Gestão de estoque e distribuição de livros'),
('Atendimento ao Cliente', 'Auxílio e suporte ao cliente'),
('Recursos Humanos', 'Gerenciamento de pessoal e contratação'),
('Desenvolvimento', 'Desenvolvimento de novos produtos e serviços'),
('Qualidade', 'Controle de qualidade dos livros'),
('Vendas', 'Gestão das vendas e relacionamento com clientes'),
('Pesquisa de Mercado', 'Análise de mercado e tendências');

-- Inserindo Funcionários (incluindo a nova coluna Email)
INSERT INTO Funcionarios (Nome, Cargo, Telefone, Endereco, Departamento_ID, Email) VALUES
('Carlos Silva', 'Editor', '111111111', 'Rua A, 123', 3, 'carlos.silva@editora.com'),
('Mariana Costa', 'Assistente', '222222222', 'Rua B, 456', 1, 'mariana.costa@editora.com'),
('Pedro Rocha', 'Contador', '333333333', 'Rua C, 789', 2, 'pedro.rocha@editora.com'),
('Ana Lima', 'Atendente', NULL, 'Rua D, 101', 5, 'ana.lima@editora.com'),
('Bruno Nunes', 'Logístico', '555555555', 'Rua E, 202', 4, 'bruno.nunes@editora.com'),
('Julia Fernandes', 'Gerente', '666666666', 'Rua F, 303', 6, 'julia.fernandes@editora.com'),
('Lucas Almeida', 'Desenvolvedor', '777777777', 'Rua G, 404', 7, 'lucas.almeida@editora.com'),
('Roberta Mendes', 'Supervisora de Qualidade', '888888888', 'Rua H, 505', 8, 'roberta.mendes@editora.com'),
('Felipe Oliveira', 'Vendedor', '999999999', 'Rua I, 606', 9, 'felipe.oliveira@editora.com'),
('Sofia Castro', 'Analista de Mercado', '000000000', 'Rua J, 707', 10, 'sofia.castro@editora.com');

-- Inserindo Autores
INSERT INTO Autores (Nome, Biografia, Nacionalidade, Data_Nascimento) VALUES
('Autor A', 'Biografia do Autor A', 'Brasil', '1975-05-10'),
('Autor B', 'Biografia do Autor B', 'Portugal', '1980-07-20'),
('Autor C', 'Biografia do Autor C', 'Espanha', '1990-03-15'),
('Autor D', 'Biografia do Autor D', 'Estados Unidos', '1965-12-01'),
('Autor E', 'Biografia do Autor E', 'França', '1972-09-25'),
('Autor F', 'Biografia do Autor F', 'Reino Unido', '1985-11-30'),
('Autor G', 'Biografia do Autor G', 'Alemanha', '1992-04-22'),
('Autor H', 'Biografia do Autor H', 'Itália', '1988-01-15'),
('Autor I', 'Biografia do Autor I', 'Canadá', '1979-10-05'),
('Autor J', 'Biografia do Autor J', 'Japão', '1983-02-14');

-- Inserindo Áreas de Conhecimento
INSERT INTO Areas_Conhecimento (Detalhes) VALUES
('Literatura Brasileira'),
('Ciência e Tecnologia'),
('História Universal'),
('Arte e Cultura'),
('Literatura Estrangeira'),
('Ficção Fantástica'),
('Psicologia'),
('Educação'),
('Filosofia'),
('Negócios e Empreendedorismo');

-- Inserindo Livros (incluindo as colunas Editora, Idioma e Palavra_Chave_Codigo)
INSERT INTO Livros (ISBN, Titulo, Autor_ID, Departamento_ID, Area_Conhecimento_ID, Data_Publicacao, Genero, Numero_Paginas, Preco, Editora, Idioma) VALUES
('9781234567897', 'Livro A', 1, 3, 1, '2020-06-15', 'Ficção', 300, 45.00, 'Editora X', 'Português'),
('9782345678901', 'Livro B', 2, 1, 2, '2019-04-10', 'Ciência', 150, 30.00, 'Editora Y', 'Inglês'),
('9783456789012', 'Livro C', 3, 2, 3, '2021-09-05', 'História', 220, 50.00, 'Editora Z', 'Espanhol'),
('9784567890123', 'Livro D', 4, 4, 4, '2018-11-22', 'Tecnologia', 400, 60.00, 'Editora W', 'Português'),
('9785678901234', 'Livro E', 5, 5, 5, '2017-08-30', 'Arte', 250, 55.00, 'Editora X', 'Francês'),
('9786789012345', 'Livro F', 6, 1, 1, '2022-05-12', 'Ficção Científica', 320, 40.00, 'Editora Y', 'Inglês'),
('9787890123456', 'Livro G', 7, 3, 2, '2020-01-08', 'Biografia', 210, 35.00, 'Editora Z', 'Alemão'),
('9788901234567', 'Livro H', 8, 2, 3, '2015-12-01', 'Romance', 180, 25.00, 'Editora W', 'Italiano'),
('9789012345678', 'Livro I', 9, 4, 4, '2019-10-30', 'Terror', 300, 55.00, 'Editora X', 'Francês'),
('9780123456789', 'Livro J', 10, 5, 5, '2021-07-15', 'História', 400, 75.00, 'Editora Y', 'Português');

-- Inserindo Exemplares (incluindo a nova coluna Data_Reserva e Status_Reserva)
INSERT INTO Exemplares (ISBN, Estado, Localizacao, Data_Reserva, Status_Reserva) VALUES
('9781234567897', 'Disponível', 'Prateleira 1', NULL, 'Ativo'),
('9782345678901', 'Reservado', 'Prateleira 2', '2023-05-15', 'Ativo'),
('9783456789012', 'Danificado', 'Prateleira 3', NULL, 'Inativo'),
('9784567890123', 'Disponível', 'Prateleira 4', NULL, 'Ativo'),
('9785678901234', 'Reservado', 'Prateleira 5', '2023-05-20', 'Ativo'),
('9786789012345', 'Disponível', 'Prateleira 6', NULL, 'Ativo'),
('9787890123456', 'Disponível', 'Prateleira 7', NULL, 'Ativo'),
('9788901234567', 'Danificado', 'Prateleira 8', NULL, 'Inativo'),
('9789012345678', 'Disponível', 'Prateleira 9', NULL, 'Ativo'),
('9780123456789', 'Reservado', 'Prateleira 10', '2023-10-25', 'Ativo');

-- Inserindo Palavras-chave
INSERT INTO Palavras_Chave (Descricao) VALUES
('Ficção'),
('Ciência'),
('História'),
('Tecnologia'),
('Arte'),
('Romance'),
('Terror'),
('Biografia'),
('Ficção Científica'),
('Literatura Juvenil');

-- Inserindo Pedidos e Vendas
INSERT INTO Pedidos_Vendas (Cliente, Data_Transacao, Status_Pedido, Total) VALUES
('João Silva', '2023-05-15', 'Finalizado', 90.00),
('Maria Santos', '2023-06-01', 'Pendente', 45.00),
('Carlos Pereira', '2023-07-10', 'Cancelado', 120.00),
('Ana Oliveira', '2023-08-22', 'Finalizado', 60.00),
('Paulo Souza', '2023-09-15', 'Pendente', 75.00),
('Luana Almeida', '2023-10-05', 'Finalizado', 150.00),
('Marcio Rodrigues', '2023-10-10', 'Cancelado', 200.00),
('Fernanda Martins', '2023-10-15', 'Finalizado', 50.00),
('Ricardo Gomes', '2023-10-20', 'Pendente', 30.00),
('Sofia Lima', '2023-10-25', 'Finalizado', 100.00);