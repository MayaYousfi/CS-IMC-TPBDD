SELECT primaryTitle, dbo.tArtist.primaryName
FROM dbo.tFilm
JOIN dbo.tJob ON dbo.tJob.idFilm = dbo.tFilm.idFilm
JOIN dbo.tArtist ON dbo.tArtist.idArtist = dbo.tJob.idArtist
GROUP BY dbo.tFilm.primaryTitle, dbo.tArtist.primaryName
HAVING COUNT(DISTINCT(dbo.tJob.category)) > 1
