-- Problem  :    Project Employees I
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT
 p.project_id,
 ROUND(AVG(e.experience_years),2) AS average_years
FROM Project AS p
INNER JOIN Employee AS e
 ON p.employee_id=e.employee_id
GROUP BY p.project_id;

