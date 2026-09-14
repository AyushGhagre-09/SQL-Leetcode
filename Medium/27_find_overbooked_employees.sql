-- Problem  :  Find Overbooked Employees
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/find-overbooked-employees/description/

-- Your solution here
WITH meeting_heavy_weeks AS(
SELECT 
 employee_id
FROM  meetings 
GROUP BY employee_id,YEARWEEK(meeting_date, 1)
HAVING SUM(duration_hours)>20 
)

SELECT 
 e.employee_id,
 e.employee_name,
 e.department,
 COUNT(e.employee_id) AS meeting_heavy_weeks
FROM meeting_heavy_weeks AS m
INNER JOIN employees AS e
 ON m.employee_id=e.employee_id
GROUP BY e.employee_id
HAVING meeting_heavy_weeks>=2
ORDER BY meeting_heavy_weeks DESC, e.employee_name ASC ;


