-- Problem  :  Combine Two Tables
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/combine-two-tables/description/

-- Your solution here
SELECT
 p.firstName,
 p.lastName,
 s.city,
 s.state
FROM Person AS p
LEFT JOIN  Address AS s
ON p.personId=s.personId;
