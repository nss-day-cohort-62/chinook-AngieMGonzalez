-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT
  i.Total AS "invoice total",
  c.FirstName || ' ' || e.LastName AS "Customer name",
  c.Country AS "customer country",
  e.FirstName || ' ' || e.LastName AS "Sale Agent full name"
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId 
JOIN Invoice i ON c.CustomerId = i.CustomerId;
