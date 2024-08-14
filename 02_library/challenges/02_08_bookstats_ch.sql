-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT b.Published, COUNT(DISTINCT(b.Title)) AS AmountOfTitles
FROM Books AS b 
GROUP BY b.Published
ORDER BY AmountOfTitles DESC 
LIMIT 10;

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT COUNT(l.BookID) AS AmountOfLoans, b.Title, b.Author
FROM Books AS b 
JOIN Loans AS l 
ON b.BookID = l.BookID 
GROUP BY (b.Title)
ORDER BY AmountOfLoans DESC
LIMIT 10;
