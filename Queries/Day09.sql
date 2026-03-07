-- Day 09
-- Buainess Question:- which city has the most delayed shipments?
select c.city,
count(s.shipment_id) as delayed_shipments
from shipments s
join orders o on s.order_id = o.order_id
join customers c on o.customer_id = c.customer_id
where datediff(s.delivered_date,s.shipped_date)>5
group by c.city
order by delayed_shipments desc;
