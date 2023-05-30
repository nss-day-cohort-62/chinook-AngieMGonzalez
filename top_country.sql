-- top_country.sql:

-- Which country's customers spent the most?
-- HINT: Use the MAX function on a subquery.

SELECT
  i.BillingCountry,
  SUM(i.Total) AS TotalSales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY i.Total DESC
LIMIT 1;
