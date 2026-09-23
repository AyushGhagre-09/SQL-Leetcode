-- Problem  :  Calculate Special Bonus
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/calculate-special-bonus/description/

-- Your solution here
SELECT 
 employee_id,
 CASE 
   WHEN employee_id%2!=0 and name NOT LIKE "M%" 
   THEN salary ELSE 0 
 END AS bonus
FROM Employees 
ORDER BY employee_id ASC;
