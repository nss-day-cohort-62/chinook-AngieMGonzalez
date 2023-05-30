-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT 
  i.*,
  t.Name AS TrackName,
  a.Name as ArtistName
FROM InvoiceLine i
JOIN Track t ON i.TrackId = t.TrackId
JOIN Album ON Album.AlbumId = t.AlbumId 
JOIN Artist a ON a.ArtistId = Album.ArtistId;
