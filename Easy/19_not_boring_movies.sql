-- Problem  :    Not Boring Movies
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
SELECT *
FROM Cinema
WHERE id%2=1 AND description !="boring"
ORDER BY rating DESC;