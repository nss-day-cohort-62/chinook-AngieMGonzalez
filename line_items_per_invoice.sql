--E11
-- line_items_per_invoice.sql:
-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
-- this is the same as e17

SELECT InvoiceId, COUNT(*) AS line_items
FROM InvoiceLine
GROUP BY InvoiceId;
