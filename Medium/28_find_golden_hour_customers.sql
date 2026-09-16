-- Problem  :  Find Golden Hour Customers
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/find-golden-hour-customers/description/

-- Your solution here
SELECT
customer_id,
COUNT(order_id) AS total_orders,
ROUND(COUNT(
        CASE
            WHEN TIME(order_timestamp) BETWEEN '11:00:00' AND '14:00:00' THEN 1
            WHEN TIME(order_timestamp) BETWEEN '18:00:00' AND '21:00:00' THEN 1
        END 
    )*100/COUNT(order_id)) AS peak_hour_percentage,
ROUND(AVG(order_rating),2) AS average_rating 
FROM restaurant_orders
GROUP BY customer_id
HAVING 
 total_orders>=3 
 AND 
 peak_hour_percentage>=60 
 AND 
  average_rating>=4 
 AND 
 (COUNT(order_rating)/COUNT(order_id))*100 >=50
ORDER BY average_rating DESC, customer_id DESC
