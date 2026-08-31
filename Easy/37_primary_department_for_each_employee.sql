-- Problem  :  Primary Department for Each Employee
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT 
 employee_id,
 department_id
FROM Employee 
WHERE primary_flag='Y'

UNION 

SELECT 
 employee_id,
 MIN(department_id)
FROM Employee 
GROUP BY  
 employee_id
HAVING COUNT(department_id)=1

