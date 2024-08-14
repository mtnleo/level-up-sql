-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
SELECT COUNT(o.OrderID) AS number_of_orders, c.FirstName, c.LastName, c.Email
FROM Customers AS c 
JOIN Orders AS o 
ON o.CustomerID = c.CustomerID 
GROUP BY o.CustomerID
ORDER BY number_of_orders DESC
LIMIT 15;