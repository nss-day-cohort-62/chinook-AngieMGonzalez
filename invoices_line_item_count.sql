--E17 invoices_line_item_count.sql:
-- Provide a query that shows all Invoices. The resultant table should include:
-- InvoiceId
-- The total number of line items on each invoice
-- this is the same as E11

SELECT 
  il.InvoiceId, 
  COUNT(il.InvoiceLineId) AS lineItems
FROM InvoiceLine il
JOIN invoice i 
  ON il.InvoiceId = i.InvoiceId
GROUP BY il.InvoiceId;
