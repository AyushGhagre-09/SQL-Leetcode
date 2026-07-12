-- Problem  :  Employees Earning More Than Their Managers
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/employees-earning-more-than-their-managers/description/

-- Your solution here
SELECT
 e.name AS Employee
FROM Employee AS e
INNER JOIN 
Employee AS m
ON e.managerId=m.id
WHERE e.salary>m.salary;
