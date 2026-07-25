-- Problem  :  Classes With at Least 5 Students
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/classes-with-at-least-5-students/description/


-- Your solution here
SELECT
class
FROM Courses
GROUP BY class
HAVING COUNT(student)>=5;