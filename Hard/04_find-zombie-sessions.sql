-- Problem  :  Find Zombie Sessions
-- Difficulty: Hard
-- Link     : https://leetcode.com/problems/find-zombie-sessions/description/

-- Your solution here
SELECT 
 session_id,
 user_id,
 TIMESTAMPDIFF(MINUTE,MIN(event_timestamp),MAX(event_timestamp)) AS session_duration_minutes,
 COUNT(CASE WHEN event_type="scroll" THEN 1 END ) AS scroll_count
FROM app_events
GROUP BY session_id,user_id
HAVING session_duration_minutes>30 
    AND scroll_count>=5 
    AND (( COUNT(CASE WHEN event_type="click" THEN 1 END ) )/ COUNT(CASE WHEN event_type="scroll" THEN 1 END ) )<0.20
    AND( COUNT(CASE WHEN event_type="purchase" THEN 1 END ) )=0
ORDER BY scroll_count DESC,session_id ASC;
