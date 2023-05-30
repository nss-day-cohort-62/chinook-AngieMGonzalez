-- Provide a query that shows total sales made by each sales agent. The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)

SELECT
  e.FirstName || ' ' || e.LastName AS "Agent Full Name",
  SUM(i.Total) AS "Total Sales"
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId 
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE e.Title LIKE '%sales%agent%' OR e.Title LIKE '%agent%sales%'
GROUP BY e.EmployeeId;
