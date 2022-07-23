SELECT 
	ca.nome AS artista,
    al.nome AS album
FROM SpotifyClone.Cantor AS ca
RIGHT JOIN SpotifyClone.Albuns AS al
ON ca.id = al.cantor_id_fk 
WHERE ca.nome LIKE 'Walt%'
ORDER BY al.nome ASC;