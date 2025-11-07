-- Q7: What is the average order value per country?
-- Purpose: Compare spending behavior by geography.

SELECT country,ROUND(AVG(order_total), 2) AS avg_order_value
FROM (SELECT invoiceno, country,
SUM(unitprice * quantity) AS order_total
FROM ecommerce
WHERE quantity > 0
AND unitprice > 0
AND invoiceNo NOT LIKE 'C%'
GROUP BY invoiceNo, Country
) AS orders
GROUP BY country
ORDER BY avg_order_value DESC;