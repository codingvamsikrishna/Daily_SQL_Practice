-- Day 15
-- Business question:-Which category of products takes the highest average delivery time?
SELECT o.category,
       AVG(DATEDIFF(s.delivered_date, s.shipped_date)) AS avg_delivery_days
FROM shipments s
JOIN orders o ON s.order_id = o.order_id
GROUP BY o.category
ORDER BY avg_delivery_days DESC;
