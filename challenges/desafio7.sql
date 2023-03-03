SELECT a.nome_artista AS 'artista', alb.nome_album AS 'album', COUNT(s.usuario_id) AS 'pessoas_seguidoras'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS alb
ON a.id = alb.artista_id
INNER JOIN SpotifyClone.seguidores AS s
ON a.id = s.artista_id
GROUP BY a.nome_artista, alb.nome_album
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;