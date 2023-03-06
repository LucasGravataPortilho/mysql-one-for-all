SELECT alb.nome_album AS 'album', COUNT(c.id) AS 'favoritadas'
FROM SpotifyClone.album AS alb
INNER JOIN SpotifyClone.cancao AS c
ON alb.id = c.album_id
INNER JOIN SpotifyClone.favoritas AS f
ON c.id = f.cancao_id
GROUP BY alb.nome_album
ORDER BY favoritadas DESC, album ASC
LIMIT 3;