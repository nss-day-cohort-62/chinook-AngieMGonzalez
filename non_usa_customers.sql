-- Provide a query showing Customers who are not in the US. The resultant table should include:
-- Customer's full name
-- Customer Id,
-- Customer's country

SELECT
  c.CustomerId,
  c.FirstName || ' ' || c.LastName AS "full name",
  c.Country
FROM Customer c
WHERE Country != 'USA';
