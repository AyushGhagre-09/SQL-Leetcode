-- Problem  :  Duplicate Emails
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/duplicate-emails/description/

-- Your solution here
SELECT
 email 
FROM Person
GROUP BY email
HAVING COUNT(*)>1;