SELECT
	COUNT(h.cliente_id_fk) AS quantidade_musicas_no_historico
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Historico AS hs
ON h.cliente_id_fk = hs.musica_id_fk
WHERE h.cliente_id_fk = 3;