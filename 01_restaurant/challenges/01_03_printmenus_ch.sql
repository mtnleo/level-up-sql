-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.
SELECT Name, Price, Description, Type
FROM Dishes
ORDER BY Price DESC;

SELECT Name, Price, Description, Type
FROM Dishes
WHERE Type LIKE ('Appetizer') OR Type LIKE ('Beverage');

SELECT Name, Price, Description, Type
FROM Dishes
WHERE Type NOT LIKE ('Beverage');