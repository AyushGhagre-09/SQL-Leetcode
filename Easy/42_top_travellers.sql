-- Problem  :  Top Travellers
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/top-travellers/description/

-- Your solution here
SELECT
u.name,
COALESCE(SUM(r.distance),0) AS travelled_distance
FROM Users AS u
LEFT JOIN Rides AS r
 on u.id=r.user_id
GROUP BY u.id,u.name
ORDER BY travelled_distance DESC, u.name ASC;
