-- Problem  :    Investments in 2016
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/investments-in-2016/description/

-- Your solution here
with duplicate_tiv_2015 AS (
SELECT 
 tiv_2015
FROM Insurance
GROUP BY tiv_2015
HAVING COUNT(*)>1
),
filtered_investments AS(
SELECT
 i.tiv_2015,
 i.tiv_2016,
 i.lat,
 i.lon
FROM Insurance AS i
INNER JOIN duplicate_tiv_2015 AS c
ON i.tiv_2015=c.tiv_2015
WHERE(i.lat,i.lon) IN(
        SELECT 
         lat,
         lon
        FROM Insurance
        GROUP BY lat,lon
        HAVING COUNT(*)=1
       )
)

SELECT 
 ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM filtered_investments;



 