SELECT 
	MIN(valor_plano) AS faturamento_minimo,
  MAX(valor_plano) AS faturamento_maximo,
  ROUND(AVG(p.valor_plano),2) AS faturamento_medio,
  ROUND(SUM(p.valor_plano),2) AS faturamento_total
FROM SpotifyClone.Plano AS p
RIGHT JOIN SpotifyClone.Cliente AS c
ON p.id = c.assinatura_id_fk ;