-- Day 02
-- Business Question: Which city places the highest number of orders?

SELECT 
    c.city,
    COUNT(o.order_id) AS total_orders
FROM orders o
JOIN customers c 
    ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY total_orders DESC
LIMIT 1;
