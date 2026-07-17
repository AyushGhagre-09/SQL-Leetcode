-- Problem  :  Game Play Analysis I
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/game-play-analysis-i/description/

-- Your solution here
SELECT
player_id,
MIN(event_date) AS first_login 
FROM Activity
GROUP BY player_id;
