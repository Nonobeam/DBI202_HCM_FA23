CREATE PROCEDURE proc_serviceTicket_part
    @serviceTicketID INT,
	@numberOfParts INT output
AS
BEGIN
    SELECT @numberOfParts = COUNT(DISTINCT p.partID)
	FROM ServiceTicket s JOIN PartsUsed p ON s.serviceTicketID LIKE p.serviceTicketID
	WHERE s.serviceTicketID LIKE @serviceTicketID
END;


