-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
SELECT *
FROM Customers
WHERE Email = 'smac@kinetecoinc.com' AND LastName = 'McAdams';
-- I can either leave the CUstomerID null, or add the new client. I think it's much better to add a new client
INSERT INTO Customers (FirstName, LastName, Email, Address, City, State, Phone, Birthday)
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com', NULL, NULL, NULL, NULL, NULL);


INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES (102, '2022-08-12 18:00:00', 5);

SELECT *
FROM Reservations
WHERE CustomerID = 102;