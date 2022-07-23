SELECT 
	c.nome AS usuario,
	IF(MAX(h.data) > '2021-%','Usuário ativo','Usuário inativo') AS condicao_usuario
    FROM SpotifyClone.Cliente AS c
LEFT JOIN SpotifyClone.Historico AS h
ON c.id = h.cliente_id_fk
GROUP by c.nome
ORDER BY c.nome ASC;