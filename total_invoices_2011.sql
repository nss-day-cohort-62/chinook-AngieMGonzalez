-- How many Invoices were there in 2011?

SELECT COUNT(*) AS total_invoices_11 
FROM invoice
WHERE invoicedate 
BETWEEN '2011-01-01 00:00:00' AND '2011-12-31 23:59:59';
