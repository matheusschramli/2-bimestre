-- 1
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("As Crônicas de Nárnia", "C.S. Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

-- 2
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, TRUE, "Ficção", "978-0241968581", "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, TRUE, "Fantasia", "978-0439708180", "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", "978-0618640157", "HarperCollins", 423, "Inglês");

-- 3
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("História Fictícia", "Autor Fictício", 2022, TRUE, "História", "978-1234567890", "Editora Fictícia", 256, "Inglês");

-- 4
UPDATE Livros SET disponivel = FALSE WHERE ano_publicacao < 2000;

-- 5
UPDATE Livros SET editora = "Plume Books" WHERE titulo = "1984";

-- 6
UPDATE Livros SET idioma = "Inglês" WHERE editora = "Penguin Books";

-- 7
UPDATE Livros SET titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)" WHERE isbn = "978-0439708180";

-- 8
DELETE FROM Livros WHERE categoria = "Terror";

-- 9
DELETE FROM Livros WHERE idioma = "Francês" AND ano_publicacao < 1970;

-- 10
DELETE FROM Livros WHERE titulo = "As Crônicas de Nárnia";

-- 11
DELETE FROM Livros WHERE editora = "Penguin Books";

-- 12
SELECT * FROM Livros WHERE quantidade_paginas > 500;

-- 13
SELECT categoria, COUNT(*) as total FROM Livros GROUP BY categoria;

-- 14
SELECT * FROM Livros LIMIT 5;

-- 15
SELECT SUM(quantidade_paginas) as total_paginas, AVG(quantidade_paginas) as media_paginas FROM Livros WHERE categoria = "Drama";

-- 16
SELECT AVG(ano_publicacao) as media_ano FROM Livros WHERE disponivel = TRUE;

-- 17
SELECT MAX(ano_publicacao) as ultimo_livro, MIN(ano_publicacao) as primeiro_livro FROM Livros;

-- 18
SELECT * FROM Livros ORDER BY ano_publicacao DESC;

-- 19
(SELECT titulo FROM Livros WHERE idioma = "Inglês")
UNION
(SELECT titulo FROM Livros WHERE idioma = "Português");

-- 20
SELECT * FROM Livros WHERE autor = "George Orwell";


