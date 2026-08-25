-- Problem  :  Restaurant Growth
-- Difficulty: Medium
-- Link     : https://leetcode.com/problems/restaurant-growth/description/?envType=study-plan-v2&envId=top-sql-50

-- Your solution here
WITH seven_day_window AS (
    SELECT DISTINCT
        visited_on,
        DATE_ADD(visited_on, INTERVAL 6 DAY) AS window_end_date
    FROM Customer
    WHERE DATE_ADD(visited_on, INTERVAL 6 DAY) IN (
        SELECT visited_on
        FROM Customer
    )
)

SELECT 
    s.window_end_date AS visited_on,
    SUM(c.amount) AS amount,
    ROUND(SUM(c.amount) / 7, 2) AS average_amount
FROM Customer AS c
INNER JOIN seven_day_window AS s
    ON c.visited_on BETWEEN s.visited_on AND s.window_end_date
GROUP BY s.window_end_date
ORDER BY s.window_end_date;



