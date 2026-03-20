-- Day 18
-- Business question:- Find the warehouse with the fastest average delivery time.
SELECT w.warehouse_id,
       AVG(DATEDIFF(s.delivery_date, s.order_date)) AS avg_delivery_time
FROM warehouses w
JOIN shipments s ON w.warehouse_id = s.warehouse_id
GROUP BY w.warehouse_id
ORDER BY avg_delivery_time ASC
LIMIT 1;
