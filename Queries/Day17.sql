-- Day 16
-- Business Question:- Find the average delay (in days) for each delivery partner.
SELECT dp.partner_id,
       AVG(DATEDIFF(s.delivery_date, s.expected_delivery_date)) AS avg_delay
FROM delivery_partners dp
JOIN partner_assignments pa ON dp.partner_id = pa.partner_id
JOIN shipments s ON pa.shipment_id = s.shipment_id
WHERE s.delivery_date > s.expected_delivery_date
GROUP BY dp.partner_id;
