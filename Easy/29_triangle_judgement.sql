-- Problem  :    Triangle Judgement
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT 
 x,
 y,
 z,
 CASE 
  WHEN (x+y)>z AND (y+z)>x AND (x+z)>y  THEN 'Yes'
  ELSE 'No'
 END AS triangle
FROM Triangle