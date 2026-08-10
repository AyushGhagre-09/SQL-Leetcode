-- Problem  :    Find Followers Count
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/find-followers-count/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT 
user_id,
COUNT(follower_id) AS followers_count
FROM Followers 
GROUP BY user_id
ORDER BY user_id ASC;
