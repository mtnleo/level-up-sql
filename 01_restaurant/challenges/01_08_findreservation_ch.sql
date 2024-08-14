-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
SELECT * 
FROM Reservations AS r
INNER JOIN Customers AS c
ON c.CustomerID = r.CustomerID
WHERE c.LastName LIKE 'St%' AND r.PartySize = 4 
ORDER BY r.Date DESC