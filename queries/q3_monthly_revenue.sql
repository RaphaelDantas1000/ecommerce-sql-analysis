-- Q3: What is the monthly revenue trend?
-- Purpose: Summarize sales by month to visualize overall business growth and detect long-term trends.

SELECT YEAR(invoicedate) AS order_year, MONTH (invoicedate) AS order_month, ROUND(SUM(quantity*unitprice),2) AS monthly_revenue
FROM ecommerce
WHERE quantity>0
GROUP BY YEAR(invoicedate), MONTH(invoicedate)
ORDER BY YEAR(invoicedate), MONTH (invoicedate) ;