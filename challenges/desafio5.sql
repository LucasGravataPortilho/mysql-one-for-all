SELECT c.nome_cancao AS 'cancao', COUNT(h.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico AS h
ON c.id = h.cancao_id
GROUP BY h.cancao_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
