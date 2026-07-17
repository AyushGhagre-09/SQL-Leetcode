-- Problem  :  Game Play Analysis I
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/game-play-analysis-i/description/

-- Your solution here
SELECT
player_id,
MIN(event_date) AS first_login 
FROM Activity
GROUP BY player_id;


-- SELECT 
--  T.player_id,
--  T.first_login
-- FROM (
--     SELECT
--     player_id,
--     event_date AS first_login,
--     ROW_NUMBER()OVER(
--         PARTITION BY player_id
--         ORDER BY event_date ASC
--     ) AS  rn
--     FROM Activity) AS T
-- WHERE T.rn=1;
