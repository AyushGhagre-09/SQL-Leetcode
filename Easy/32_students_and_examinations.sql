-- Problem  :     Students and Examinations
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT 
 s.student_id,
 s.student_name,
 sb.subject_name,
 COUNT(e.student_id) As attended_exams
FROM Students AS s
INNER JOIN Subjects AS sb
LEFT JOIN  Examinations AS e 
 ON s.student_id=e.student_id AND  sb.subject_name =e.subject_name
GROUP BY 
   s.student_id,s.student_name,sb.subject_name 
ORDER BY 
    s.student_id,s.student_name,sb.subject_name;