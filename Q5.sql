SELECT TOP 1 m.mechanicName, SUM(sm.hours) AS sumHours
FROM Mechanic m JOIN ServiceMehanic sm 
ON m.mechanicID LIKE sm.mechanicID
INNER JOIN ServiceTicket s ON sm.serviceTicketID LIKE s.serviceTicketID
WHERE YEAR(s.dateReturned) LIKE 2021
GROUP BY m.mechanicName
ORDER BY sumHours DESC