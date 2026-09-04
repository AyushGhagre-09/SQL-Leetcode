-- Problem  :  Exchange Seats
-- Difficulty: Medium
-- Link     : https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT
 CASE 
   WHEN id%2=1 and id=(SELECT MAX(id) FROM Seat) THEN id
   WHEN id%2=1  THEN id+1
   ELSE id-1
   END AS id,
 student
FROM Seat
ORDER BY id ASC;
