-- Problem  :  Big Countries
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/big-countries/description/


-- Your solution here
SELECT
 name,
 population,
 area
FROM World
WHERE area>=3000000 OR population>=25000000;