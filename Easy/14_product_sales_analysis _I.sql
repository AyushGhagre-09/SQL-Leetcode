-- Problem  :  Product Sales Analysis I
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/product-sales-analysis-i/description/

-- Your solution here
SELECT
 p.product_name,
 s.year,
 s.price
FROM SALES AS s
INNER JOIN Product AS p
 ON s.product_id=p.product_id;