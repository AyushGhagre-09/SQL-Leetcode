-- Problem  :  Department Top Three Salaries
-- Difficulty: Hard
-- Link     :  https://leetcode.com/problems/department-top-three-salaries/description/

-- Your solution here
SELECT
 T.Department,
 T.Employee,
 T.Salary
FROM 
    (SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary,
    DENSE_Rank()OVER(
        PARTITION BY d.name
        ORDER BY e.salary DESC
        ) As rn
    FROM 
    Employee AS e
    INNER JOIN Department AS d
    ON e.departmentId=d.id) AS T
WHERE T.rn<=3;


