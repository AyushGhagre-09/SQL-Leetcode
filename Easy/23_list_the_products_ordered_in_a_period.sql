-- Problem  :    List the Products Ordered in a Period
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT
 product_name,
 SUM(unit) AS unit
FROM Products AS p
INNER JOIN Orders AS o
 ON p.product_id=o.product_id
WHERE DATE_FORMAT(order_date,'%Y-%m') = '2020-02'
GROUP BY product_name
HAVING unit>=100;

