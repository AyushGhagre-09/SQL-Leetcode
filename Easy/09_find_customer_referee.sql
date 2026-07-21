-- Problem  :  Find Customer Referee
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/find-customer-referee/description/


-- Your solution here
SELECT
 name
FROM Customer
WHERE 
 referee_id!=2 OR 
 referee_id IS NULL;