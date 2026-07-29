-- Problem  :  Sales Person
-- Difficulty: Easy 
-- Link     :  https://leetcode.com/problems/sales-person/description/

-- Your solution here
 SELECT
  name
 FROM 
 SalesPerson
 WHERE sales_id NOT IN (
        SELECT
        o.sales_id
        FROM Orders AS o
        INNER JOIN Company AS c
        ON o.com_id=c.com_id
        INNER JOIN SalesPerson AS s
        ON o.sales_id=s.sales_id
        WHERE c.name="RED"
    )
  
    
 
