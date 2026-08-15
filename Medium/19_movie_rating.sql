-- Problem  :      Movie Rating
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/movie-rating/description/

-- Your solution here
(SELECT 
 u.name AS results
FROM MovieRating AS m
INNER JOIN Users AS u
 ON m.user_id=u.user_id
GROUP BY u.name
ORDER BY COUNT(*) DESC,u.name ASC
LIMIT 1)

UNION ALL

(SELECT 
 mi.title
FROM MovieRating AS m
INNER JOIN  Movies AS mi
 ON m.movie_id=mi.movie_id
WHERE DATE_FORMAT(created_at,'%Y-%m')='2020-02'
GROUP BY mi.title
ORDER BY AVG(rating) DESC,mi.title ASC
LIMIT 1);


