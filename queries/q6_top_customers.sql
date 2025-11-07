-- Q6: Who are the top 10 customers by total spend?
-- Purpose: Identify the most valuable customers.

SELECT customerid, SUM(unitprice * quantity) AS revenue
FROM ecommerce
WHERE customerid IS NOT NULL
GROUP BY customerid
ORDER BY revenue DESC
LIMIT 10;