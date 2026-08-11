-- Problem  :    Biggest Single Number
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT
 max(T.num) AS num
FROM (SELECT
 num,
 COUNT(*) AS num_count
FROM  MyNumbers
GROUP BY num) AS T
WHERE T.num_count=1;