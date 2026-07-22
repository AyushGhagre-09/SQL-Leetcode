-- Problem  :   Trips and Users
-- Difficulty: Hard
-- Link     :  https://leetcode.com/problems/trips-and-users/description


-- Your solution here
WITH trip_counts AS (
    SELECT
        t.request_at,
        COUNT(*) AS total_count
    FROM Trips AS t
    INNER JOIN Users AS uc ON t.client_id = uc.users_id
    INNER JOIN Users AS ud ON t.driver_id = ud.users_id
    WHERE uc.banned = 'No'
      AND ud.banned = 'No'
      AND t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
    GROUP BY t.request_at
),
cancelled_trips AS (
    SELECT
        t.request_at,
        COUNT(
            CASE
                WHEN t.status IN ('cancelled_by_client', 'cancelled_by_driver') THEN 1
                ELSE NULL
            END
        ) AS cancel_count
    FROM Trips AS t
    INNER JOIN Users AS uc ON t.client_id = uc.users_id
    INNER JOIN Users AS ud ON t.driver_id = ud.users_id
    WHERE uc.banned = 'No'
      AND ud.banned = 'No'
      AND t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
    GROUP BY t.request_at
)

SELECT 
    t.request_at AS `Day`,
    ROUND(c.cancel_count / t.total_count, 2) AS `Cancellation Rate`
FROM trip_counts AS t
INNER JOIN cancelled_trips AS c
    ON t.request_at = c.request_at;