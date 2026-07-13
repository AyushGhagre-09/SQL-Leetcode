-- Problem  :   Consecutive Numbers
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/consecutive-numbers/description/

-- Your solution here

SELECT DISTINCT
    num AS ConsecutiveNums
FROM (
    SELECT
        id,
        num,
        LAG(num, 1) OVER (ORDER BY id) AS prev1,
        LAG(num, 2) OVER (ORDER BY id) AS prev2
    FROM Logs
) t
WHERE num = prev1
  AND num = prev2;