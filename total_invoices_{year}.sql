How many Invoices were there in 2009 and 2011?

SELECT COUNT(InvoiceDate) FROM Invoice i
WHERE i.InvoiceDate LIKE '%2009%' OR i.InvoiceDate LIKE '%2011%';
