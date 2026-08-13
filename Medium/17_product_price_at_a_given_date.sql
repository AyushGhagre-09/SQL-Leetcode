-- Problem  :      Product Price at a Given Date
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/product-price-at-a-given-date/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here

SELECT 
DISTINCT p.product_id,
COALESCE(p1.new_price,10) AS price
FROM Products AS p 
LEFT JOIN (SELECT 
 product_id,
 new_price
FROM Products
WHERE (product_id,change_date) IN
    (SELECT 
    product_id,
    MAX(change_date) AS latest_date
    FROM Products 
    WHERE change_date<='2019-08-16'
    GROUP BY product_id)
) AS p1
ON p.product_id=p1.product_id


