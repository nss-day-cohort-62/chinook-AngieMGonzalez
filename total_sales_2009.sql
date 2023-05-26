-- What are the respective total sales for each of those years?

SELECT 
    SUM(total) AS total_sales_09
FROM invoice
WHERE invoicedate 
BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 23:59:59';
