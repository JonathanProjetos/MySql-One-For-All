SELECT
	m.faixas AS nome,
    COUNT(h.musica_id_fk) AS reproducoes
FROM SpotifyClone.Musicas AS m
LEFT JOIN SpotifyClone.Historico AS h
ON m.id = h.musica_id_fk
LEFT JOIN SpotifyClone.Cliente AS c
ON  c.id = h.cliente_id_fk
WHERE c.assinatura_id_fk = 1 OR c.assinatura_id_fk = 4
GROUP BY m.faixas
ORDER BY m.faixas ASC;