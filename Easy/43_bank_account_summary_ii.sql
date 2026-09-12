-- Problem  :  Bank Account Summary II
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/bank-account-summary-ii/description/

-- Your solution here
SELECT
u.name,
SUM(t.amount) AS balance
FROM USERS AS u
INNER JOIN Transactions AS t
 ON u.account=t.account
GROUP BY u.name
HAVING balance>10000
