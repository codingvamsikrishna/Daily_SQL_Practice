--- Which shipments are delayed?
select shipment_id,
datediff(delivered_date,shipped_date) as delivery_dates
from shipments
where datediff(delivered_date,shipped_date)>5;
