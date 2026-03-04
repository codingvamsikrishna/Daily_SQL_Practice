-- Day 06
-- Business question:- Which warehouse is causing the most delays?
select w.warehouse_id, w.city,
count(s.shipment_id) as delays
from shipments s
join warehouses on w.warehouse_id = s.warehouse_id
where datediff(s.delivered_date,s.shipped_date)>5
group by w.warehouse_id,w.city
order by delay desc;
