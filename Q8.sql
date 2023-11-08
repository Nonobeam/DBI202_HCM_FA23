CREATE PROCEDURE proc_salesPerson_invoice
    @salesID DECIMAL(18, 0),
	@numberOfInvoices INT output
AS
BEGIN
    SELECT @numberOfInvoices = COUNT(DISTINCT si.invoiceID)
	FROM SalesInvoice si JOIN SalesPerson sp
	ON si.salesID LIKE sp.salesID
	WHERE si.salesID LIKE @salesID
END;

