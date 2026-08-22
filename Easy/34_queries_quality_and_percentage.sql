-- Problem  :      Queries Quality and Percentage
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
with quality_cte AS (
SELECT 
 query_name,
 ROUND(AVG((rating/position)),2) AS quality
FROM Queries 
GROUP BY query_name
),
total_count AS (
SELECT 
  query_name,
  COUNT(*) AS total_count
FROM Queries 
GROUP BY query_name
),
rating_less_than_3 AS (
SELECT 
  query_name,
  COUNT(*)AS rating
FROM Queries 
WHERE rating<3
GROUP BY query_name
)
 
SELECT 
q.query_name,
q.quality,
COALESCE(ROUND(r.rating*100/t.total_count,2),0) AS poor_query_percentage
FROM  quality_cte AS q
LEFT JOIN total_count AS t
 ON q.query_name=t.query_name
LEFT JOIN  rating_less_than_3 AS r 
 ON q.query_name=r.query_name