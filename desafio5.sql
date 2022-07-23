SELECT 
	m.faixas AS cancao,
    COUNT(h.musica_id_fk) AS reproducoes
FROM SpotifyClone.Musicas AS m
LEFT JOIN SpotifyClone.Historico AS h
ON m.id = h.musica_id_fk
GROUP BY m.faixas
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;