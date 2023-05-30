Which sales agent made the most in sales over all?

SELECT
  e.FirstName || ' ' || e.LastName AS "Agent Full Name",
  SUM(i.Total) AS "Total Sales"
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId 
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY SUM(i.Total) DESC
LIMIT 1;
