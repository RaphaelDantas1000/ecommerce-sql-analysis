-- Q8: What are the top revenue-generating countries (total and % share)?
-- Purpose: Understand total revenue by country and each country's % share of the overall revenue.

SELECT country,
ROUND(SUM(UnitPrice * Quantity), 2) AS revenue,
ROUND(SUM(UnitPrice * Quantity) /
(SELECT SUM(UnitPrice * Quantity) FROM ecommerce WHERE UnitPrice > 0) * 100,
2) AS revenue_share_percent
FROM ecommerce
WHERE UnitPrice > 0
GROUP BY country
ORDER BY revenue DESC;
