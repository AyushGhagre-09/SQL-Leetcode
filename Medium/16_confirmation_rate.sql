-- Problem  :      Confirmation Rate
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
WITH user_confiration_stats AS (
SELECT 
 s.user_id,
 COUNT(c.user_id) AS total_count,
 COUNT(CASE WHEN c.action='confirmed' THEN 1 ELSE NULL END) AS confirmed_count
FROM Signups AS s 
LEFT JOIN Confirmations AS c
 ON s.user_id=c.user_id
GROUP BY s.user_id
)

SELECT 
 user_id,
 COALESCE(ROUND(confirmed_count/total_count,2),0) AS  confirmation_rate 
FROM user_confiration_stats;
