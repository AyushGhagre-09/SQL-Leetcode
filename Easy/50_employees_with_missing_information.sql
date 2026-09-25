-- Problem  :  Employees With Missing Information
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/employees-with-missing-information/description/

-- Your solution here
SELECT  
 e.employee_id
FROM Employees AS e
LEFT JOIN Salaries As s
 ON e.employee_id=s.employee_id
WHERE s.salary IS NULL

UNION 

SELECT  
 s.employee_id
FROM Employees AS e
RIGHT JOIN Salaries As s
 ON e.employee_id=s.employee_id
WHERE  e.name IS NULL
ORDER BY employee_id ASC

