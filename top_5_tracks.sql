-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT
  t.Name AS track_name,
  SUM(il.Quantity) AS total_purchases
FROM
  Track t
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY total_purchases DESC
LIMIT 5;
