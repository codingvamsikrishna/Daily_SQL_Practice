### Day 13
-- Business question:-  which warehouse handles the most orders?
select w.warehouse_id, w.city,
count(o.order_id) as total_orders
from orders o
join shipments s on o.order_id = s.order_id
join warehouses w on s.warehouse_id = w.warehouse_id
group by w.warehouse_id, w.city
order by total_orders desc;
