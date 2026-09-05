-- Problem  :  Swap Sex of Employees
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/swap-sex-of-employees/description/

-- Your solution here
UPDATE Salary
SET sex= CASE 
          WHEN sex='f' THEN 'm'
          ELSE 'f'
         END ;


