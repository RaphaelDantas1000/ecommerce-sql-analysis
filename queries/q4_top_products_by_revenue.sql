-- Q4: What are the top 10 products by total revenue?
-- Purpose: Identify the highest-performing products to understand which items contribute most to overall sales.

SELECT stockcode, description, ROUND(SUM(quantity*uniTprice), 2) AS revenue
FROM ecommerce
WHERE quantity>0
GROUP BY stockcode, description
ORDER BY revenue DESC
LIMIT 10;
