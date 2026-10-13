-- Problem  :  Find Emotionally Consistent Users
-- Difficulty: Medium
-- Link     : https://leetcode.com/problems/find-covid-recovery-patients/description/

-- Your solution here
WITH first_positive_result AS(
    SELECT 
     patient_id,
     MIN(test_date) AS pos_result
    FROM covid_tests
    WHERE result='Positive'
    GROUP BY patient_id 
),
recovery AS(
    SELECT 
     c.patient_id,
     f.pos_result,
     MIN(test_date) AS neg_result
    FROM covid_tests AS c 
    INNER JOIN first_positive_result f
    ON c.patient_id=f.patient_id
    WHERE result='Negative' AND c.test_date>f.pos_result
    GROUP BY c.patient_id,f.pos_result
)


SELECT
  p.patient_id,
  p.patient_name,
  p.age,
  TIMESTAMPDIFF(DAY,pos_result,neg_result) AS recovery_time
FROM patients AS p
INNER JOIN  recovery AS r
 ON p.patient_id=r.patient_id
ORDER BY recovery_time ASC,p.patient_name ASC;
