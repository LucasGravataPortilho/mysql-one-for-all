SELECT a.nome_artista AS 'artista',
    CASE
        WHEN COUNT(f.cancao_id) >= 5 THEN 'A'
        WHEN COUNT(f.cancao_id) >= 3 THEN 'B'
        WHEN COUNT(f.cancao_id) >= 1 THEN 'C'
        ELSE '-'
    END AS 'ranking'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS alb
ON a.id = alb.artista_id
INNER JOIN SpotifyClone.cancao AS c
ON alb.id = c.album_id
LEFT JOIN SpotifyClone.favoritas AS f
ON c.id = f.cancao_id
GROUP BY a.nome_artista
ORDER BY COUNT(f.cancao_id) DESC, artista ASC;