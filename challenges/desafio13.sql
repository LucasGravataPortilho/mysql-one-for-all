SELECT
    CASE
        WHEN u.idade <= 30 THEN 'Até 30 anos'
        WHEN u.idade <= 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS 'faixa_etaria',
    COUNT(DISTINCT u.id) AS 'total_pessoas_usuarias',
    COUNT(f.usuario_id) AS 'total_favoritadas'
FROM SpotifyClone.usuario AS u
LEFT JOIN SpotifyClone.favoritas AS f
ON u.id = f.usuario_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;