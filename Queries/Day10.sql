-- Day 10
---Business Question:-  What is the average delivery time for each warehouse?
select w.warehouse_id,w.city,
   avg(datediff(s.delivered_date,s.shipped_date)) AS average_days
from shipments s
join warehouses w on s.warehouse_id = w.warehouse_id
group by w.warehouse_id,w.city
order by average_days desc;
