-- Problem  :   Find Books with Polarized Opinions
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/find-books-with-polarized-opinions/description/

-- Your solution here
SELECT 
 b.book_id,
 b.title,
 b.author,
 b.genre,
 b.pages,
 MAX(rs.session_rating)-MIN(rs.session_rating) AS rating_spread,
 ROUND(COUNT(CASE WHEN rs.session_rating<=2 OR rs.session_rating>=4 THEN 1 END)/COUNT(rs.session_rating),2) AS polarization_score 
FROM books AS b
INNER JOIN reading_sessions AS rs
ON b.book_id=rs.book_id
GROUP BY b.book_id,b.title,b.author,b.genre,b.pages
HAVING MAX(rs.session_rating)>=4 AND MIN(rs.session_rating)<=2 
AND COUNT(rs.session_rating)>=5 AND polarization_score>=0.6
ORDER BY polarization_score DESC,b.title DESC;
