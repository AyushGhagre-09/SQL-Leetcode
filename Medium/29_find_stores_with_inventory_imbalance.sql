-- Problem  :  Find Stores with Inventory Imbalance
-- Difficulty: Medium
-- Link     : https://leetcode.com/problems/find-stores-with-inventory-imbalance/description/

-- Your solution here
WITH store_price_summary AS(
SELECT 
  s.store_id,
  s.store_name,
  s.location,
  i.product_name,
  i.price,
  i.quantity,
  RANK()OVER(PARTITION BY s.store_id ORDER BY i.price DESC ) AS max_rnk,
  RANK()OVER(PARTITION BY s.store_id ORDER BY i.price ASC) AS min_rnk
FROM  stores AS s 
INNER JOIN inventory AS i
 ON s.store_id=i.store_id

)

SELECT 
 store_id,
 store_name,
 location,
 MAX(CASE WHEN max_rnk=1 THEN product_name END) AS most_exp_product,
 MAX(CASE WHEN min_rnk=1 THEN product_name END)AS cheapest_product,
 ROUND((MAX(CASE WHEN min_rnk=1 THEN  quantity END)/ MAX(CASE WHEN max_rnk=1 THEN  quantity END)),2) AS imbalance_ratio
FROM  store_price_summary;
GROUP BY store_id,store_name,location
HAVING  MAX(CASE WHEN max_rnk=1 THEN  quantity END)< MAX(CASE WHEN min_rnk=1 THEN quantity END) AND COUNT(product_name)>=3
ORDER BY imbalance_ratio DESC ,store_name ASC;


