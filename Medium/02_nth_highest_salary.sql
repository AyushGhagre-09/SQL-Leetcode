-- Problem  : Nth Highest Salary
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/nth-highest-salary/description/

-- Your solution here
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N=N-1;
  RETURN (
     
     SELECT
      DISTINCT salary 
     FROM Employee 
     ORDER BY salary DESC
     LIMIT 1
     OFFSET N

  );
END