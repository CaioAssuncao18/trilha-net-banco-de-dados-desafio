--1
SELECT
		Nome, 
		Ano
FROM Filmes
--2
SELECT * FROM Filmes
ORDER BY Ano ASC
--3
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
--4
SELECT * FROM Filmes
WHERE Ano = 1997
--5
SELECT * FROM Filmes
WHERE Ano > 2000
--6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao <150
ORDER BY Duracao ASC
--7
SELECT Ano, COUNT(*) as Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC
--8
SELECT * FROM Atores
WHERE Genero = 'M'
--9
SELECT * FROM Atores
WHERE Genero = 'F'
--10
SELECT Nome, Genero
FROM [Filmes].[dbo].[Filmes] AS FILMES
INNER JOIN Filmes.dbo.FilmesGenero ON FILMES.Id = FilmesGenero.IdFilme
INNER JOIN Filmes.dbo.Generos ON Generos.Id = FilmesGenero.IdGenero
--11
SELECT Nome, Genero
FROM [Filmes].[dbo].[Filmes] AS FILMES
INNER JOIN Filmes.dbo.FilmesGenero ON FILMES.Id = FilmesGenero.IdFilme
INNER JOIN Filmes.dbo.Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero LIKE 'Mistério'
--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM [Filmes].[dbo].[Filmes] AS FILMES
INNER JOIN Filmes.dbo.ElencoFilme ON FILMES.Id = ElencoFilme.IdFilme
INNER JOIN Filmes.dbo.Atores ON Atores.Id = ElencoFilme.IdAtor