-- Problem  :  Find Users with High Token Usage
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/find-users-with-high-token-usage/description/

-- Your solution here
SELECT 
 DISTINCT
 T.user_id,
 T.prompt_count,
 T.avg_tokens
FROM 
(SELECT
 user_id,
 COUNT(prompt)OVER(w) AS prompt_count,
 MAX(tokens)OVER(w) AS tokens,
 ROUND(AVG(tokens) OVER (w),2) AS avg_tokens
FROM prompts 
WINDOW w AS (PARTITION BY user_id)) AS T
WHERE T.prompt_count>=3 AND T.tokens>T.avg_tokens
ORDER BY T.avg_tokens DESC,T.user_id ASC

