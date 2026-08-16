-- Problem  :    The Number of Employees Which Report to Each Employee
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT
  T.report_to AS employee_id,
  T.name,
  COUNT(T.employee_id) AS reports_count,
  ROUND((AVG(T.age)) )AS average_age
FROM(SELECT
 e.employee_id,
 r.employee_id AS report_to,
 r.name AS name,
 e.age
FROM Employees AS e
INNER JOIN Employees AS r
  ON e.reports_to=r.employee_id
) AS T
GROUP BY T.report_to,T.name
ORDER BY employee_id ASC;
