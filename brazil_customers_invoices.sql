-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- Customer's full name
-- Invoice Id, from Invoice
-- InvoiceDate from Invoice
-- BillingCountry from Invoice

SELECT
  c.FirstName || ' ' || c.LastName AS "full name",
  i.InvoiceId,
  i.InvoiceDate,
  i.BillingCountry
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil';
