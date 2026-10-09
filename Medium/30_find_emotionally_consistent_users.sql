-- Problem  :  Find Emotionally Consistent Users
-- Difficulty: Medium
-- Link     : https://leetcode.com/problems/find-emotionally-consistent-users/description/

-- Your solution here
WITH user_reaction_counts AS (
    SELECT
        user_id,
        reaction AS dominant_reaction,
        ROUND(COUNT(*) /(SELECT COUNT(*) FROM reactions  r1 where r.user_id=r1.user_id),2)AS reaction_ratio,
        (SELECT COUNT(content_id) FROM reactions  r1 where r.user_id=r1.user_id) AS content_count
    FROM reactions AS r
    GROUP BY user_id, reaction 

)
SELECT 
 user_id,
 dominant_reaction,
 reaction_ratio 
FROM user_reaction_counts 
WHERE reaction_ratio>0.6 AND content_count>=5
ORDER BY reaction_ratio DESC,user_id ASC
