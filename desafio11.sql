SELECT 
	mf.faixas AS nome_musica,
    CASE
		WHEN m.faixas LIKE '%Streets%' THEN REPLACE(m.faixas,'Streets', 'Code Review')
        WHEN m.faixas LIKE '%Her Own%' THEN REPLACE(m.faixas,'Her Own', 'Trybe')
        WHEN m.faixas LIKE '%Inner Fire%' THEN REPLACE(m.faixas,'Inner Fire', 'Project')
        WHEN m.faixas LIKE '%Silly%' THEN REPLACE(m.faixas,'Silly', 'Nice')
        WHEN m.faixas LIKE '%Circus%' THEN REPLACE(m.faixas,'Circus', 'Pull Request')
        ELSE mf.faixas
	 END AS novo_nome
FROM SpotifyClone.Musicas AS m
INNER JOIN SpotifyClone.Musicas AS mf
ON m.id = mf.id
WHERE m.faixas IN("Dance With Her Own", "Let's Be Silly", "Magic Circus", "Troubles Of My Inner Fire", "Without My Streets")
ORDER BY m.faixas;