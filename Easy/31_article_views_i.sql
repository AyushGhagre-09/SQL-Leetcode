-- Problem  :     Article Views I
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT 
DISTINCT author_id As id
FROM Views
WHERE viewer_id=author_id
ORDER BY id ASC;