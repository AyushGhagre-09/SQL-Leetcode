-- Problem  :  Employees Whose Manager Left the Company
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT 
e.employee_id
FROM Employees AS e 
LEFT JOIN Employees AS m
 ON e.manager_id=m.employee_id
WHERE e.salary<30000  
  AND e.manager_id IS NOT NULL
  AND m.employee_id IS NULL
ORDER BY e.employee_id

