-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37

SELECT COUNT(*) AS InvoiceId37LineItems
FROM InvoiceLine
WHERE InvoiceId = 37;
