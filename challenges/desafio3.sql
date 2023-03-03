SELECT u.nome AS 'pessoa_usuaria', COUNT(h.cancao_id) AS 'musicas_ouvidas', ROUND(SUM(c.duracao_segundos) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h
ON u.id = h.usuario_id
INNER JOIN SpotifyClone.cancao AS c
ON h.cancao_id = c.id
GROUP BY u.nome
ORDER BY u.nome ASC;