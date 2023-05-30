-- Provide a query that shows the most purchased track(s) of 2013.


-- differ in how the data is grouped and the column used for the count. 
-- The first query groups the data by InvoiceId and counts the rows

SELECT 
  t.Name, 
  COUNT(*) AS total_sales 
FROM InvoiceLine l
JOIN Invoice i ON l.InvoiceId = i.InvoiceId
JOIN Track t ON l.TrackId = t.TrackId
WHERE i.InvoiceDate LIKE '2013%'
GROUP BY l.InvoiceId
ORDER BY total_sales DESC;

-- while the second query groups the data by Name and sums the Quantity column.

SELECT 
      SUM(Quantity) AS TOTAL, 
      t.Name 
FROM Track t 
JOIN InvoiceLine l ON t.TrackId = l.TrackId 
JOIN Invoice i ON i.InvoiceId = l.InvoiceId 
WHERE i.InvoiceDate LIKE '2013%' 
GROUP BY l.Name
ORDER BY TOTAL DESC;
