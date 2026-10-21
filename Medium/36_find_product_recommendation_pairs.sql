-- Problem  :  Find Product Recommendation Pairs
-- Difficulty: Medium 
-- Link     : https://leetcode.com/problems/find-product-recommendation-pairs/description/

-- Your solution here

SELECT
    p1.product_id AS product1_id,
    p2.product_id AS product2_id,
    pi1.category AS product1_category,
    pi2.category AS product2_category,
    COUNT(DISTINCT p1.user_id) AS customer_count
FROM ProductPurchases AS p1
CROSS JOIN ProductPurchases AS p2
JOIN ProductInfo AS pi1
    ON p1.product_id = pi1.product_id
JOIN ProductInfo AS pi2
    ON p2.product_id = pi2.product_id
WHERE p1.user_id = p2.user_id
  AND p1.product_id < p2.product_id
GROUP BY
    p1.product_id,
    p2.product_id,
    pi1.category,
    pi2.category
HAVING COUNT(DISTINCT p1.user_id) >= 3
ORDER BY
    customer_count DESC,
    product1_id ASC,
    product2_id ASC;


