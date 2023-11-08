SELECT c.custName, c.phone, c.sex, c.cusAddress, COUNT(s.invoiceID) AS NumberOfInvoiceID
FROM Customer c JOIN SalesInvoice s ON c.custID LIKE s.custID
GROUP BY c.custName, c.phone, c.sex, c.cusAddress
HAVING COUNT(s.invoiceID) >= 3
