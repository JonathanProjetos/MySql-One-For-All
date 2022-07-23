SELECT 
	COUNT(m.id) AS cancoes,
    COUNT(c.id) AS artistas,
    COUNT(a.id) AS albuns
FROM SpotifyClone.Musicas AS m
LEFT JOIN SpotifyClone.Cantor AS c
ON m.id = c.id 
LEFT JOIN SpotifyClone.Albuns AS a
ON m.id = a.id;