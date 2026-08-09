-- Problem  :    Number of Unique Subjects Taught by Each Teacher
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT 
 teacher_id,
 COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;