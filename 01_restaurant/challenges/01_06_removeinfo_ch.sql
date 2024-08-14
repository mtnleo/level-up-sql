-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
SELECT * 
FROM Customers
WHERE FirstName = 'Norby' OR LastName = 'Norby';

SELECT * 
FROM Reservations
WHERE CustomerID = 64;

DELETE FROM Reservations
WHERE CustomerID = 64 AND Date >= '2022-07-24';

-- or, a better practice
UPDATE Reservations
SET Reservations.Date = NULL
WHERE ReservationID = 2000;