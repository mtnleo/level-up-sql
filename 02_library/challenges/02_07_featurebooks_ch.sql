-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
SELECT b.Title, b.Author, b.Barcode
FROM Books AS b 
WHERE b.Published BETWEEN 1890 AND 1899
AND (BookID NOT IN (SELECT BookID
                    FROM Loans l
                    WHERE l.ReturnedDate IS NULL))
ORDER BY Title;