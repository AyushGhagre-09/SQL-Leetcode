-- Problem  :  Analyze Subscription Conversion 
-- Difficulty: Medium
-- Link     : https://leetcode.com/problems/analyze-subscription-conversion/description/

-- Your solution here
SELECT
 user_id,
 ROUND(AVG(CASE WHEN activity_type='free_trial' THEN activity_duration END),2) AS trial_avg_duration ,
 ROUND(AVG(CASE WHEN activity_type='paid' THEN activity_duration END),2) AS paid_avg_duration
FROM UserActivity
GROUP BY user_id
HAVING trial_avg_duration IS NOT NULL AND paid_avg_duration IS NOT NULL
ORDER BY user_id ASC;
