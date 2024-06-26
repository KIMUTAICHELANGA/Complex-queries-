-- Using max keyword
SELECT *
FROM invoices
WHERE invoice_total > (SELECT MAX(invoice_total) FROM invoices WHERE invoice_id = 3);

-- Using all keyword
SELECT *
FROM invoices
WHERE invoice_total > ALL (SELECT invoice_total FROM invoices WHERE invoice_id = 3);