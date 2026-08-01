-- Problem  :    Market Analysis I
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/market-analysis-i/description/

-- Your solution here
SELECT
 u.user_id AS buyer_id,
 u.join_date,
 COALESCE(t.total_count,0) AS orders_in_2019 
FROM Users AS u
LEFT JOIN (SELECT
o.buyer_id ,
COUNT(o.order_date) AS total_count
FROM Orders  AS o
WHERE Year(o.order_date)=2019
GROUP BY o.buyer_id 
) AS t
 ON u.user_id=t.buyer_id;


