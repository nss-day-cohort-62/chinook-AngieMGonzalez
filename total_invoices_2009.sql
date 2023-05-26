-- How many Invoices were there in 2009?

SELECT COUNT(*) AS total_invoices_09 
FROM invoice
WHERE invoicedate 
BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 23:59:59';
