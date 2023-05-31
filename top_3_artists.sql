-- Provide a query that shows the top 3 best selling artists.

SELECT
  ar.Name AS artist_name,
  SUM(il.Quantity) AS total_sales
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
JOIN Track t ON al.AlbumId = t.AlbumId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY ar.ArtistId
ORDER BY total_sales DESC
LIMIT 3;
