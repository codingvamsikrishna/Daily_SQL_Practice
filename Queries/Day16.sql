-- Day 16
-- Business question:- Find the top 3 customers who have the highest number of delayed shipments.
SELECT c.customer_id, COUNT(s.shipment_id) AS delayed_shipments
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN shipments s ON o.order_id = s.order_id
WHERE s.delivery_date > s.expected_delivery_date
GROUP BY c.customer_id
ORDER BY delayed_shipments DESC
LIMIT 3;
