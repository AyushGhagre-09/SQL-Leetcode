-- Problem  :   Invalid Tweets
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/invalid-tweets/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT
tweet_id
FROM TWeets
WHERE CHAR_LENGTH(content)>15;