-- Which sales agent made the most in sales in 2009?

SELECT
  e.FirstName || ' ' || e.LastName AS "Agent Full Name",
  SUM(i.Total) AS "Total Sales"
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId 
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE invoicedate 
BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 23:59:59'
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY SUM(i.Total) DESC
LIMIT 1;
