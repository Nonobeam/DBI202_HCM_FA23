SELECT cu.custName, c.model, s.serviceTicketID, s.dateReturned
FROM Customer cu
INNER JOIN ServiceTicket s
ON cu.custID LIKE s.custID
INNER JOIN Cars c
ON c.carID LIKE s.carID
WHERE MONTH(s.dateReturned) <= 3
AND YEAR(s.dateReturned) = 2021
ORDER BY s.serviceTicketID DESC