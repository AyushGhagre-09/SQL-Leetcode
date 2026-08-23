-- Problem  :  Average Time of Process per Machine
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/average-time-of-process-per-machine/description/

-- Your solution here
SELECT 
 T.machine_id,
 ROUND(SUM(T.total_time)/COUNT(DISTINCT process_id),3) AS processing_time
FROM(
SELECT 
 machine_id,
 process_id,
 (SUM(CASE WHEN activity_type='end' THEN timestamp END )-SUM(CASE WHEN activity_type='start' THEN timestamp END ))  total_time
FROM ACTIVITY
GROUP BY machine_id,process_id
) AS T
GROUP BY T.machine_id
 

