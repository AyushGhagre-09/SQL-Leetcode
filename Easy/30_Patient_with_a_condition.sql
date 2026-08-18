-- Problem  :    Patients With a Condition
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/patients-with-a-condition/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT
patient_id,
patient_name,
conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
  OR conditions LIKE '% DIAB1%';