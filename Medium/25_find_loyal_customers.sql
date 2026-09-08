-- Problem  :  Find Loyal Customers
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/find-loyal-customers/description/

-- Your solution here
SELECT 
customer_id
FROM customer_transactions
GROUP BY customer_id
HAVING 
COUNT(transaction_id)>=3 
 AND 
TIMESTAMPDIFF(DAY,MIN(transaction_date),MAX(transaction_date)) >=30 
 AND 
(COUNT(CASE WHEN transaction_type='refund' THEN 1  END)/COUNT(transaction_id))*100 <20
ORDER BY customer_id ASC;

