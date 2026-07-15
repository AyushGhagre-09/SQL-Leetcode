-- Problem  :   Customers Who Never Order
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/customers-who-never-order/description/

-- Your solution here
SELECT 
  name AS Customers
FROM Customers 
WHERE id NOT IN(
    SELECT
     customerId 
    FROM Orders
)