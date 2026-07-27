-- Problem  :    Tree Node
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/tree-node/description/

-- Your solution here
# Write your MySQL query statement below
SELECT
 n.id,
 CASE 
  WHEN n.p_id IS  NULL THEN "Root"
  WHEN EXISTS (
    SELECT
     1
    FROM Tree AS n2
    WHERE n.id=n2.p_id
  ) THEN "Inner"
  ELSE
    "Leaf"
  END AS type
FROM Tree AS n;
