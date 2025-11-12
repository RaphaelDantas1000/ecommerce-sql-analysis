-- Q10: What is the revenue contribution of the top 5 countries?
-- Purpose: Measure market concentration.

SELECT country,ROUND(SUM(UnitPrice * Quantity), 2) AS revenue,
ROUND(
SUM(UnitPrice * Quantity) /
(SELECT SUM(UnitPrice * Quantity) FROM ecommerce WHERE UnitPrice > 0) * 100, 2
) AS revenue_share_percent
FROM ecommerce
WHERE UnitPrice > 0
GROUP BY country
ORDER BY revenue DESC
LIMIT 5;