-- Problem  :  Rank Scores
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/rank-scores/description/

-- Your solution here
SELECT
 score,
 DENSE_RANK() OVER(ORDER BY score DESC) AS 'rank' 
FROM Scores;
