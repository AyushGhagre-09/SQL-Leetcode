-- Problem  :   Game Play Analysis IV
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/game-play-analysis-iv/description/

-- Your solution here
WITH first_login AS(
    SELECT
     player_id,
     MIN(event_date) AS  min_event_date
    FROM Activity
    GROUP BY player_id
)
SELECT 
 ROUND(COUNT(*)/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM first_login AS f
JOIN Activity  AS a
ON f.player_id=a.player_id
WHERE a.event_date=DATE_ADD(f.min_event_date, INTERVAL 1 DAY);