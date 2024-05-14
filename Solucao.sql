--- 1
select nome,
       ano
from dbo.Filmes

--- 2
select nome,
		ano,
		duracao
from dbo.Filmes
order by ano

--- 3
select nome,
		ano,
		duracao
from dbo.Filmes
where nome = 'De Volta para o Futuro'

--- 4
select nome,
		ano,
		duracao
from dbo.Filmes
where ano = 1997

--- 5
select nome,
		ano,
		duracao
from dbo.Filmes
where ano > 2000

--- 6
select nome,
		ano,
		duracao
from dbo.Filmes
where duracao > 100 and duracao < 150
order by duracao asc

--- 7
select ano,
		count(nome) as 'quantidade'
from dbo.Filmes
group by ano
order by count(nome) desc

--- 8
select PrimeiroNome,
		UltimoNome,
		genero
from dbo.Atores
where genero = 'm'

--- 9
select PrimeiroNome,
		UltimoNome,
		Genero
from dbo.Atores
where genero = 'f'
order by PrimeiroNome asc

--- 10
select dbo.Filmes.Nome,
		dbo.Generos.Genero
from dbo.Filmes
join dbo.FilmesGenero
on dbo.Filmes.Id = dbo.FilmesGenero.IdFilme
join dbo.Generos
on dbo.Generos.Id= dbo.FilmesGenero.IdGenero

--- 11
select dbo.Filmes.Nome,
		dbo.Generos.Genero
from dbo.Filmes
 join dbo.FilmesGenero
on dbo.Filmes.Id = dbo.FilmesGenero.IdFilme
 join dbo.Generos
on dbo.Generos.Id= dbo.FilmesGenero.IdGenero
where dbo.Generos.Genero = 'Mistério'

--- 12
select dbo.Filmes.Nome,
		dbo.Atores.PrimeiroNome,
		dbo.Atores.UltimoNome,
		dbo.ElencoFilme.Papel
from dbo.Filmes
join dbo.ElencoFilme
on dbo.Filmes.Id = dbo.ElencoFilme.IdFilme
join dbo.Atores
on dbo.Atores.Id = dbo.ElencoFilme.IdAtor

