-- Q9: Which month had the highest return rate?
-- Purpose: Identify problematic periods.

SELECT DATE_FORMAT(InvoiceDate, '%m/%Y') AS month,
ABS(SUM(CASE WHEN Quantity < 0 THEN Quantity ELSE 0 END)) AS return_qty,
SUM(CASE WHEN Quantity > 0 THEN Quantity ELSE 0 END) AS sold_qty,
ROUND(
ABS(SUM(CASE WHEN Quantity < 0 THEN Quantity ELSE 0 END)) /
NULLIF(SUM(CASE WHEN Quantity > 0 THEN Quantity ELSE 0 END), 0) * 100, 2
) AS return_rate_percent
FROM ecommerce
GROUP BY month
HAVING sold_qty > 0
ORDER BY return_rate_percent DESC
LIMIT 1;