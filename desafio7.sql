SELECT 
	ca.nome AS artista,
    al.nome AS album,
    COUNT(se.cantor_id_fk) AS seguidores
FROM SpotifyClone.Cantor AS ca
LEFT JOIN SpotifyClone.Albuns AS al
ON ca.id = al.cantor_id_fk
LEFT JOIN SpotifyClone.Seguindo AS se
ON ca.id = se.cantor_id_fk
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;