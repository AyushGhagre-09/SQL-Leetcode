-- Problem  :    Fix Names in a Table
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/fix-names-in-a-table/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT 
user_id,
CONCAT(UPPER(LEFT(name,1)),LOWER(MID(name,2))) AS name
FROM Users
ORDER BY user_id ASC;