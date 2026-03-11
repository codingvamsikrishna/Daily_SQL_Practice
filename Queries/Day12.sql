-- Day 12
-- Business question:- which customer city has the highest average delivery time?
select c.city,
avg(datediff(s.delivered_date,s.shipped_date)) as highest_avg_delivery
from shipments s
join orders o on s.order_id = o.order_id
join customers c on o.customer_id = c.customer_id
group by c.city
order by highest_avg_delivery desc;
