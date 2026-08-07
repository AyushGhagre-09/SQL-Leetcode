-- Problem  :    Customer Who Visited but Did Not Make Any Transactions
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here

SELECT 
 v.customer_id,
 COUNT(v.visit_id) AS count_no_trans
FROM visits AS v
LEFT JOIN Transactions AS t
 ON v.visit_id=t.visit_id
WHERE t.transaction_id IS NULL 
GROUP BY v.customer_id