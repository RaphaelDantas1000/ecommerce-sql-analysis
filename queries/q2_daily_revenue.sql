-- Q2: What is the daily revenue trend (total per day)?
-- Purpose: Identify day-to-day fluctuations in sales and detect potential seasonality or growth patterns.

SELECT DATE(InvoiceDate) AS order_date, ROUND(SUM(Quantity * UnitPrice), 2) AS daily_revenue
FROM ecommerce 
WHERE Quantity > 0 
GROUP BY DATE(InvoiceDate) 
ORDER BY order_date;

