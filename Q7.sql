-- Create the trigger
CREATE TRIGGER tr_insert_car
ON Cars
AFTER INSERT
AS
BEGIN
    SELECT *
	FROM inserted AS i, Cars c
	WHERE c.model LIKE i.model AND i.year LIKE c.year
	
END;

