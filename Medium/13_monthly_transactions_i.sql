-- Problem  :    Monthly Transactions I
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/monthly-transactions-i/description/

-- Your solution here
SELECT
DATE_FORMAT(trans_date, '%Y-%m') AS 'month',
country,
COUNT(trans_date) AS trans_count,
COUNT(CASE WHEN state='approved' THEN 1 END ) AS approved_count,
SUM(amount) AS trans_total_amount,
COALESCE(SUM(CASE WHEN state='approved' THEN amount END ),0) AS approved_total_amount
FROM 
Transactions
GROUP BY month,country;
