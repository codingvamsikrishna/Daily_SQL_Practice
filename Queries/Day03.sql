-- Day 03
-- Business Question: How many orders are placed in each category?

SELECT 
    category,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY category
ORDER BY total_orders DESC;