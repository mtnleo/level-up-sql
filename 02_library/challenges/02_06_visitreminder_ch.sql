-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT COUNT(l.LoanID) AS amount_of_loans, p.FirstName, p.LastName, p.Email
FROM Loans AS l 
JOIN Patrons AS p 
ON p.PatronID = l.PatronID
GROUP BY l.PatronID
ORDER BY amount_of_loans ASC
LIMIT 9;