-- Problem  :   Trips and Users
-- Difficulty: Hard
-- Link     :  https://leetcode.com/problems/trips-and-users/description

-- Your solution here
With  high_traffic_visits AS(
SELECT
 id,
 visit_date,
 people,
 id-ROW_NUMBER()OVER(ORDER BY id ASC) AS grp
FROM Stadium
WHERE people>=100
)
,consecutive_groups AS(
SELECT
min(id) AS min,
max(id) AS max
FROM high_traffic_visits 
group by grp
HAVING COUNT(*)>=3
)
SELECT
id,
visit_date,
people
FROM high_traffic_visits AS h
INNER JOIN consecutive_groups as c
 ON  h.id BETWEEN c.min AND c.max
ORDER BY visit_date ASC;