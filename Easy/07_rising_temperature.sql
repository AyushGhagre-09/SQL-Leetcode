-- Problem  :  Rising Temperature
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/rising-temperature/


-- Your solution here
# Write your MySQL query statement below
WITH  cte As(
SELECT 
 id,
 recordDate,
 LAG(recordDate) OVER(
      ORDER BY recordDate ASC
   ) AS prev_date,
 temperature,
 LAG(temperature) OVER(
      ORDER BY recordDate ASC
   ) AS prev_temp
FROM Weather
)

SELECT id   AS Id
FROM cte
WHERE 
    TIMESTAMPDIFF(DAY,prev_date,recordDate)=1
     AND
    temperature>prev_temp ;  

  

