-- Problem  :    Last Person to Fit in the Bus
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/

-- Your solution here
WITH last_person AS(
    SELECT
    person_name,
    weight,
    SUM(weight)OVER(ORDER BY turn ) AS total_weight
    FROM Queue
)
SELECT person_name
FROM last_person 
WHERE total_weight<=1000
ORDER BY total_weight DESC
LIMIT 1;