-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT
  e.FirstName || ' ' || e.LastName AS "full name",
  i.InvoiceId
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId 
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE e.Title LIKE '%sales%agent%' OR e.Title LIKE '%agent%sales%';
