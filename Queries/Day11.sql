-- Day 11
-- Business Question: which category has the most delyed shipments?
select o.category,
count(s.shipment_id) as delayed_shipments
from shipments s
join orders o on s.order_id = o.order_id
where datediff(s.delivered_date,s.shipped_date)>5
group by o.category
order by delayed_shipments desc;
