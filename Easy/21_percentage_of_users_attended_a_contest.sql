-- Problem  :    Percentage of Users Attended a Contest
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT 
r.contest_id,
ROUND(COUNT(r.user_id)*100.0/(SELECT COUNT(user_id) FROM Users),2) AS percentage
FROM users AS u
INNER JOIN Register AS r
 ON u.user_id=r.user_id
GROUP BY r.contest_id;