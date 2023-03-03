SELECT u.nome AS 'pessoa_usuaria', IF(YEAR(MAX(h.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS 'status_pessoa_usuaria'
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h
ON u.id = h.usuario_id
GROUP BY u.nome
ORDER BY u.nome ASC;