INSERT INTO Departamentos (Nome, Responsavel) VALUES
('Ficção', 'João Silva'),
('Não-Ficção', 'Maria Oliveira'),
('Infantil', 'Ana Costa'),
('Técnico', 'Pedro Souza'),
('História', 'Lucia Ramos'),
('Biografia', 'Ricardo Alves'),
('Literatura Estrangeira', 'Fernanda Santos'),
('Poesia', 'Carlos Lima'),
('Autoajuda', 'Tatiane Almeida'),
('Fantasia', 'Roberto Ferreira');

INSERT INTO Funcionarios (Nome, Cargo, Telefone, Email, Endereco, Departamento_ID) VALUES
('Marcos Pereira', 'Gerente', '1234-5678', 'marcos@example.com', 'Rua A, 123', 1),
('Julia Gomes', 'Atendente', '2345-6789', 'julia@example.com', 'Rua B, 456', 2),
('Carlos Santos', 'Caixa', '3456-7890', 'carlos@example.com', 'Rua C, 789', 3),
('Tatiane Lima', 'Vendedora', '4567-8901', 'tatiane@example.com', 'Rua D, 101', 1),
('Paulo Henrique', 'Estoquista', '5678-9012', 'paulo@example.com', 'Rua E, 202', 4),
('Fernanda Cruz', 'Supervisor', '6789-0123', 'fernanda@example.com', 'Rua F, 303', 2),
('Rafael Oliveira', 'Atendente', '7890-1234', 'rafael@example.com', 'Rua G, 404', 3),
('Lucas Silva', 'Gerente', '8901-2345', 'lucas@example.com', 'Rua H, 505', 1),
('Aline Ferreira', 'Assistente', '9012-3456', 'aline@example.com', 'Rua I, 606', 2),
('Eduardo Martins', 'Vendedor', '0123-4567', 'eduardo@example.com', 'Rua J, 707', 3);

INSERT INTO Autores (Nome, Biografia, Nacionalidade, Data_Nascimento) VALUES
('Machado de Assis', 'Um dos maiores escritores brasileiros.', 'Brasileiro', '1839-06-21'),
('Clarice Lispector', 'Famosa escritora e jornalista.', 'Brasileira', '1920-12-10'),
('J.K. Rowling', 'Autora da série Harry Potter.', 'Britânica', '1965-07-31'),
('George Orwell', 'Escritor britânico, autor de 1984.', 'Britânico', '1903-06-25'),
('Gabriel García Márquez', 'Prêmio Nobel de Literatura.', 'Colombiano', '1927-03-06'),
('Jane Austen', 'Famosa autora inglesa.', 'Britânica', '1775-12-16'),
('Ernest Hemingway', 'Escritor americano.', 'Americano', '1899-07-21'),
('Agatha Christie', 'Rainha do crime.', 'Britânica', '1890-09-15'),
('Haruki Murakami', 'Romancista japonês.', 'Japonês', '1949-01-12'),
('Fernando Pessoa', 'Um dos maiores poetas portugueses.', 'Português', '1888-06-13');

INSERT INTO Areas_Conhecimento (Descricao) VALUES
('Literatura'),
('História'),
('Ciências Sociais'),
('Matemática'),
('Física'),
('Química'),
('Biologia'),
('Geografia'),
('Filosofia'),
('Artes');

INSERT INTO Livros (ISBN, Titulo, Autor_ID, Departamento_ID, Area_Conhecimento_ID, Data_Publicacao, Genero, Numero_Paginas, Preco) VALUES
('9783161484100', 'Dom Casmurro', 1, 1, 1, '1899-04-01', 'Ficção', 250, 29.90),
('9783161484101', 'A Moreninha', 2, 1, 1, '1844-03-01', 'Ficção', 200, 19.90),
('9783161484102', 'Harry Potter e a Pedra Filosofal', 3, 1, 1, '1997-06-26', 'Fantasia', 309, 49.90),
('9783161484103', '1984', 4, 1, 1, '1949-06-08', 'Ficção', 328, 39.90),
('9783161484104', 'Cem Anos de Solidão', 5, 1, 1, '1967-05-30', 'Ficção', 417, 59.90),
('9783161484105', 'Orgulho e Preconceito', 6, 1, 1, '1813-01-28', 'Ficção', 432, 39.90),
('9783161484106', 'O Velho e o Mar', 7, 1, 1, '1952-09-01', 'Ficção', 128, 29.90),
('9783161484107', 'A Morte e a Morte de Quincas Berro DÁgua', 8, 1, 1, '1961-01-01', 'Ficção', 208, 34.90),
('9783161484108', 'O Pequeno Príncipe', 9, 1, 1, '1943-04-06', 'Ficção', 96, 24.90),
('9783161484109', 'O Apanhador no Campo de Centeio', 10, 1, 1, '1951-07-16', 'Ficção', 277, 34.90);

INSERT INTO Exemplares (ISBN, Estado, Localizacao) VALUES
('9783161484100', 'Disponível', 'Estante 1'),
('9783161484101', 'Reservado', 'Estante 2'),
('9783161484102', 'Disponível', 'Estante 3'),
('9783161484103', 'Danificado', 'Estante 4'),
('9783161484104', 'Disponível', 'Estante 5'),
('9783161484105', 'Reservado', 'Estante 6'),
('9783161484106', 'Danificado', 'Estante 7'),
('9783161484107', 'Disponível', 'Estante 8'),
('9783161484108', 'Perdido', 'Estante 9'),
('9783161484109', 'Disponível', 'Estante 10');

INSERT INTO Clientes (Nome, Email, Telefone, Endereco) VALUES
('Ricardo Almeida', 'ricardo@example.com', '9988-7766', 'Rua L, 123'),
('Lucia Fernandes', 'lucia@example.com', '8877-6655', 'Rua M, 234'),
('Carlos Henrique', 'carlos@example.com', '7766-5544', 'Rua N, 345'),
('Tatiane Lima', 'tatiane@example.com', '6655-4433', 'Rua O, 456'),
('Eduardo Martins', 'eduardo@example.com', '5544-3322', 'Rua P, 567'),
('Fernanda Costa', 'fernanda@example.com', '4433-2211', 'Rua Q, 678'),
('Juliana Rocha', 'juliana@example.com', '3322-1100', 'Rua R, 789'),
('Felipe Silva', 'felipe@example.com', '2211-0099', 'Rua S, 890'),
('Amanda Pereira', 'amanda@example.com', '1100-9988', 'Rua T, 901'),
('Victor Hugo', 'victor@example.com', '9988-8877', 'Rua U, 012');

INSERT INTO Pedidos_Vendas (Cliente_ID, Data_Transacao, Status_Pedido, Total) VALUES
(1, '2024-10-01', 'Finalizado', 29.90),
(2, '2024-10-02', 'Pendente', 19.90),
(3, '2024-10-03', 'Cancelado', 49.90),
(4, '2024-10-04', 'Finalizado', 39.90),
(5, '2024-10-05', 'Finalizado', 59.90),
(6, '2024-10-06', 'Pendente', 39.90),
(7, '2024-10-07', 'Finalizado', 29.90),
(8, '2024-10-08', 'Cancelado', 34.90),
(9, '2024-10-09', 'Finalizado', 24.90),
(10, '2024-10-10', 'Finalizado', 34.90);

INSERT INTO Detalhes_Pedido (Pedido_ID, Numero_Serie, Quantidade, Preco, Cliente_ID, Data_Pedido) VALUES
(1, 1, 1, 29.90, 1, '2024-10-01'),
(2, 2, 1, 19.90, 2, '2024-10-02'),
(3, 3, 1, 49.90, 3, '2024-10-03'),
(4, 4, 1, 39.90, 4, '2024-10-04'),
(5, 5, 1, 59.90, 5, '2024-10-05'),
(6, 6, 1, 39.90, 6, '2024-10-06'),
(7, 7, 1, 29.90, 7, '2024-10-07'),
(8, 8, 1, 34.90, 8, '2024-10-08'),
(9, 9, 1, 24.90, 9, '2024-10-09'),
(10, 10, 1, 34.90, 10, '2024-10-10');

INSERT INTO Palavras_Chave (Descricao) VALUES
('Ficção'),
('Romance'),
('Aventura'),
('Mistério'),
('História'),
('Literatura'),
('Cultura'),
('Educação'),
('Ciência'),
('Tecnologia');

INSERT INTO Livros_Palavras_Chave (Livro_ISBN, Palavra_Chave_Codigo) VALUES
('9783161484100', 1),
('9783161484101', 1),
('9783161484102', 2),
('9783161484103', 2),
('9783161484104', 3),
('9783161484105', 4),
('9783161484106', 5),
('9783161484107', 6),
('9783161484108', 7),
('9783161484109', 8);
