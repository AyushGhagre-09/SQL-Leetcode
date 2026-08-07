-- Problem  :   Replace Employee ID With The Unique Identifier
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT
u.unique_id,
e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS u
 ON  e.id=u.id;