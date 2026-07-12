-- Problem  :   Department Highest Salary
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/department-highest-salary/description/

-- Your solution here
SELECT
  d.name AS Department,
  e.name AS Employee,
  e.salary AS Salary
FROM Employee AS e
INNER JOIN Department AS d
ON e.departmentId=d.id
WHERE (d.name,e.salary) IN (
       SELECT
         d.name,
         MAX(salary) 
       FROM Employee AS e
       INNER JOIN Department AS d
       ON e.departmentId=d.id
       GROUP BY d.name
    )
