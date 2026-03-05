-- Day 07
--Buainess question: Warehouse causing most delayed shipments
SELECT w.warehouse_id, w.city,
       COUNT(s.shipment_id) AS delayed_shipments
FROM shipments s
JOIN warehouses w ON s.warehouse_id = w.warehouse_id
WHERE DATEDIFF(s.delivered_date, s.shipped_date) > 5
GROUP BY w.warehouse_id, w.city
ORDER BY delayed_shipments DESC;
