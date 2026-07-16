-- Problem  :   Delete Duplicate Emails
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/delete-duplicate-emails/description/

-- Your solution here
DELETE p
FROM 
Person AS p
INNER JOIN (
    SELECT
        id,
        email,
        RANK()OVER(
            PARTITION BY email 
            ORDER BY id ASC
        ) AS rn
    FROM Person
    ) AS p1
ON p.id=p1.id
WHERE p1.rn>=2







    




