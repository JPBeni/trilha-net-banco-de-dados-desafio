--1
SELECT 
	Nome,
	Ano
FROM Filmes


--2
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY  Ano ASC;

--3
SELECT 
	Nome, 
	Ano, 
	Duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';

--4
SELECT 
	 Nome,
	 Ano,
	 Duracao
FROM Filmes
WHERE Ano = '1997';

--5
SELECT 
	Nome, 
	Ano, 
	Duracao
FROM Filmes
WHERE Ano > 2000;

--6
SELECT 
	Nome, 
	Ano, 
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(*) AS quantidade_filmes
FROM Filmes
GROUP BY Ano
ORDER BY quantidade_filmes DESC;

--8
SELECT 
	PrimeiroNome, 
	UltimoNome, 
	Genero
FROM Atores
WHERE Genero = 'M';

--9 
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

--10
SELECT f.nome AS nome_filme, fg.idgenero AS Filmesgenero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme;

--11
SELECT 
    f.nome AS nome_filme, 
    g.Genero AS Filmesgenero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos g ON fg.IdGenero = g.Id
WHERE 
    g.Genero = 'Mistério';

--12
SELECT 
    f.nome AS nome_filme, 
    a.primeironome AS PrimeiroNome, 
    a.ultimonome AS UltimoNome, 
    ef.papel AS Papel
FROM 
    Filmes f
INNER JOIN 
    ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN 
    Atores a ON ef.IdAtor = a.Id;
