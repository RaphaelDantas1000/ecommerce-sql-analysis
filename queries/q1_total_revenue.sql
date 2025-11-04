-- Q1: What is the total revenue for the entire dataset?
-- Purpose: Calculate total sales by summing the product of Quantity and UnitPrice, excluding returns.

SELECT ROUND(SUM(unitprice * quantity),2) AS total_unitprice
FROM ecommerce
WHERE quantity >0;