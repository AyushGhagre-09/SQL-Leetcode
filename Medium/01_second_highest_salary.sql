-- Problem  :  Second Highest Salary
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/second-highest-salary/description/

-- Your solution here
SELECT 
 (SELECT
  DISTINCT salary 
  FROM Employee
  ORDER BY salary DESC
  LIMIT 1
  OFFSET 1
 )AS SecondHighestSalary ;

