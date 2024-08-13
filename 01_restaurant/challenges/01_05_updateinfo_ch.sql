-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.
UPDATE Customers
SET Address = '74 Pine St.', City = 'New York', State = 'NY'
WHERE Customers.FirstName = ('Taylor') AND Customers.LastName = ('Jenkins');

SELECT *
FROM CUSTOMERS 
WHERE Customers.FirstName = ('Taylor') AND Customers.LastName = ('Jenkins');

UPDATE Customers
SET Address = '968 Bartillon Park', City = 'New York', State = 'NY'
WHERE CustomerID = 4; -- Quick fix lol