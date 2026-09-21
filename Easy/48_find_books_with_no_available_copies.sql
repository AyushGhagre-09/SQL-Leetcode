-- Problem  :  Find Books with No Available Copies
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/find-books-with-no-available-copies/description/

-- Your solution here
SELECT 
 l.book_id,
 l.title,
 l.author,
 l.genre,
 l.publication_year,
 t.borrowed_book AS current_borrowers
FROM library_books AS l
INNER JOIN (
    SELECT
 book_id,
 COUNT(borrow_date) AS borrowed_book
FROM borrowing_records
WHERE return_date IS NULL
GROUP BY book_id

) AS t
ON l.book_id=t.book_id
WHERE l.total_copies=t.borrowed_book
ORDER BY current_borrowers DESC,l.title ASC

