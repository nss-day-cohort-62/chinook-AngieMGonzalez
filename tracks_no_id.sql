-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre

SELECT
  t.Name AS TrackName,
  a.Title AS AlbumName,
  m.Name AS MediaType,
  g.Name AS GenreType
FROM Track T
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId;
