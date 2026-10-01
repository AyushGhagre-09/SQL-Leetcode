-- Problem  :  Combine Two Tables
-- Difficulty: Medium
-- Link     : https://leetcode.com/problems/find-drivers-with-improved-fuel-efficiency/description/

-- Your solution here
SELECT 
 d.driver_id,
 d.driver_name,
 ROUND(AVG(CASE WHEN MONTH(trip_date) BETWEEN 1 AND 6 THEN (distance_km/fuel_consumed) END  ),2) AS first_half_avg ,
 ROUND(AVG(CASE WHEN MONTH(trip_date) BETWEEN 7 AND 12 THEN (distance_km/fuel_consumed) END   ),2) AS second_half_avg ,
 ROUND(AVG(CASE WHEN MONTH(trip_date) BETWEEN 7 AND 12 THEN (distance_km/fuel_consumed) END   ) - AVG(CASE WHEN MONTH(trip_date) BETWEEN 1 AND 6 THEN (distance_km/fuel_consumed) END  ),2)AS efficiency_improvement
FROM drivers AS d  
INNER JOIN trips AS t
 ON d.driver_id=t.driver_id
GROUP BY d.driver_id,d.driver_name
HAVING COUNT(CASE WHEN MONTH(trip_date) BETWEEN 1 AND 6 THEN 1 END )>=1 AND COUNT(CASE WHEN MONTH(trip_date) BETWEEN 7 AND 12 THEN 1 END )>=1  AND  second_half_avg>first_half_avg
ORDER BY efficiency_improvement DESC,d.driver_name ASC;
