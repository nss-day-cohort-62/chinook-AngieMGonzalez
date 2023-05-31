-- Provide a query that shows the most purchased Media Type.

SELECT
  m.Name AS MediaType,
  SUM(il.Quantity) AS total_purchases
FROM MediaType m
JOIN Track t ON m.MediaTypeId = t.MediaTypeId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY m.MediaTypeId
ORDER BY total_purchases DESC
LIMIT 1;
