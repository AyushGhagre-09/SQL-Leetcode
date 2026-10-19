-- Problem  :  Find Consistently Improving Employees
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/find-consistently-improving-employees/description/

-- Your solution here
WITH rank_reviews AS(
SELECT
e.employee_id,
e.name,
p.review_date,
p.rating,
COUNT(*)OVER(PARTITION BY e.employee_id) AS cnt,
ROW_NUMBER()OVER(PARTITION BY e.employee_id ORDER BY review_date DESC) AS rnk
FROM employees AS e
INNER JOIN performance_reviews  AS p
 ON e.employee_id=p.employee_id
),
filter_reviews AS(
    SELECT 
     employee_id,
     name,
     review_date,
     rating,
     LEAD(rating,1)OVER(PARTITION BY employee_id ORDER BY review_date DESC) AS rating_2,
     LEAD(rating,2)OVER(PARTITION BY employee_id ORDER BY review_date DESC) AS rating_3
    FROM rank_reviews 
    WHERE rnk<=3 AND cnt>=3

)

SELECT 
 employee_id,
 name,
 rating-rating_3 AS improvement_score
FROM filter_reviews
WHERE rating_2 IS NOT NULL AND rating_3 IS NOT NULL AND rating>rating_2 AND rating_2>rating_3
ORDER BY  improvement_score DESC, name ASC ;





