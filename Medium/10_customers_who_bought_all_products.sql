-- Problem  :    Customers Who Bought All Products
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/customers-who-bought-all-products/description/

-- Your solution here
SELECT 
 customer_id
FROM Customer AS c
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key)>=(
    SELECT 
      COUNT(product_key)
    FROM Product

);

