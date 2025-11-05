-- Q5: What are the top 10 products with the highest return rate?
-- Purpose: Identify which products are most frequently returned to uncover potential quality or customer satisfaction issues.

SELECT
  StockCode,
  MIN(CASE
        WHEN TRIM(Description) <> '' THEN Description
      END) AS Description,
  SUM(CASE WHEN Quantity > 0 THEN Quantity ELSE 0 END) AS sold_qty,
  ABS(SUM(CASE WHEN Quantity < 0 THEN Quantity ELSE 0 END)) AS return_qty,
  ROUND(
    ABS(SUM(CASE WHEN Quantity < 0 THEN Quantity ELSE 0 END)) /
    NULLIF(SUM(CASE WHEN Quantity > 0 THEN Quantity ELSE 0 END), 0) * 100, 2
  ) AS return_rate_percent
FROM ecommerce
GROUP BY StockCode
HAVING sold_qty > 0
ORDER BY return_rate_percent DESC;
