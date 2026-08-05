-- Problem  :     Immediate Food Delivery II
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/immediate-food-delivery-ii/description/

-- Your solution here
WITH first_order_date AS (
SELECT
customer_id,
MIN(order_date) AS first_date
FROM Delivery
GROUP BY customer_id

),
classified_delivery AS (
SELECT 
 COUNT(*) AS immediate_count
FROM first_order_date AS f
INNER JOIN  Delivery AS d
 ON f.customer_id=d.customer_id
WHERE f.first_date=d.customer_pref_delivery_date

)

SELECT 
 ROUND((immediate_count/(SELECT COUNT(DISTINCT customer_id) FROM Delivery))*100,2) AS immediate_percentage
FROM classified_delivery;


