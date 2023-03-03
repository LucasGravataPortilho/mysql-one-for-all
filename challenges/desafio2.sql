SELECT COUNT(c.nome_cancao) AS 'cancoes', COUNT(DISTINCT a.nome_artista) AS 'artistas', COUNT(DISTINCT alb.nome_album) AS 'albuns'
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.artista AS a
ON c.artista_id = a.id
INNER JOIN SpotifyClone.album AS alb
ON c.album_id = alb.id;