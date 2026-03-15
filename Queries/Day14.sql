- Day 14
- which delivery partner works with which warehouse the most?
SELECT dp.name AS partner_name,
       w.warehouse_id,
       w.city,
       COUNT(s.shipment_id) AS total_shipments
FROM partner_assignments pa
JOIN shipments s ON pa.shipment_id = s.shipment_id
JOIN warehouses w ON s.warehouse_id = w.warehouse_id
JOIN delivery_partners dp ON pa.partner_id = dp.partner_id
GROUP BY dp.name, w.warehouse_id, w.city
ORDER BY total_shipments DESC;