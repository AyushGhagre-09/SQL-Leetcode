-- Problem  :      Average Selling Price
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
WITH product_sales AS(
SELECT
p.product_id,
p.price,
u.units,
p.price*u.units AS total_price 
FROM Prices AS p
LEFT JOIN UnitsSold AS u
 ON u.purchase_date BETWEEN p.start_date AND p.end_date AND p.product_id=u.product_id

),
product_summary AS(
SELECT 
 product_id,
 SUM(total_price)AS total_price,
 SUM(units) AS total_units
FROM product_sales
GROUP BY product_id
)

SELECT 
product_id,
COALESCE(ROUND(total_price/total_units,2),0) AS average_price
FROM product_summary



