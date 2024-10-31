-- 1. Adicionar uma coluna de 'Editora' à tabela Livros
ALTER TABLE Livros
ADD COLUMN Editora VARCHAR(100);

-- 2. Modificar o tipo da coluna 'Preco' na tabela Livros para incluir mais precisão
ALTER TABLE Livros
MODIFY COLUMN Preco DECIMAL(12, 2);

-- 3. Adicionar uma coluna 'Email' à tabela Funcionarios
ALTER TABLE Funcionarios
ADD COLUMN Email VARCHAR(100);

-- 4. Remover a coluna 'Responsavel' da tabela Departamentos
ALTER TABLE Departamentos
DROP COLUMN Responsavel;

-- 5. Adicionar uma nova coluna 'Data_Reserva' à tabela Exemplares
ALTER TABLE Exemplares
ADD COLUMN Data_Reserva DATE;

-- 6. Modificar a coluna 'Telefone' na tabela Funcionarios para permitir NULL
ALTER TABLE Funcionarios
MODIFY COLUMN Telefone VARCHAR(15) NULL;

-- 7. Adicionar uma coluna 'Idioma' à tabela Livros
ALTER TABLE Livros
ADD COLUMN Idioma VARCHAR(50) DEFAULT 'Português';

-- 8. Adicionar uma chave estrangeira para associar Palavras-Chave aos Livros
ALTER TABLE Livros
ADD COLUMN Palavra_Chave_Codigo INT,
ADD FOREIGN KEY (Palavra_Chave_Codigo) REFERENCES Palavras_Chave(Codigo);

-- 9. Adicionar uma coluna de 'Status_Reserva' na tabela Exemplares
ALTER TABLE Exemplares
ADD COLUMN Status_Reserva ENUM('Ativo', 'Inativo') DEFAULT 'Ativo';

-- 10. Renomear a coluna 'Descricao' para 'Detalhes' na tabela Areas_Conhecimento
ALTER TABLE Areas_Conhecimento
CHANGE COLUMN Descricao Detalhes TEXT;
