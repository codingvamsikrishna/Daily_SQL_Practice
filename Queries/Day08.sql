-- DAy 08
-- Business question:- Which delivery partner is causing the most delays?
SELECT dp.partner_id, dp.name,
       COUNT(s.shipment_id) AS delayed_shipments
FROM shipments s
JOIN partner_assignments pa ON s.shipment_id = pa.shipment_id
JOIN delivery_partners dp ON pa.partner_id = dp.partner_id
WHERE DATEDIFF(s.delivered_date, s.shipped_date) > 5
GROUP BY dp.partner_id, dp.name
ORDER BY delayed_shipments DESC;
