SELECT
	c.nome AS usuario,
	COUNT(h.musica_id_fk) AS qtde_musicas_ouvidas,
  ROUND(SUM(m.duracao_segundo) /60,2) AS total_minutos
FROM SpotifyClone.Cliente AS c
LEFT JOIN SpotifyClone.Historico AS h
ON h.cliente_id_fk = c.id
LEFT JOIN SpotifyClone.Musicas AS m
ON h.musica_id_fk = m.id
GROUP BY c.id
ORDER BY c.nome ASC;