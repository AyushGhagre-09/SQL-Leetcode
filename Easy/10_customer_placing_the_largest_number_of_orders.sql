-- Problem  :  Customer Placing the Largest Number of Orders
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/


-- Your solution here
SELECT
 T.customer_number
FROM(
    SELECT
    customer_number,
    COUNT(order_number) AS total_customer_orders
    FROM Orders
    GROUP BY customer_number
    ORDER BY total_customer_orders DESC
    LIMIT 1
) AS T