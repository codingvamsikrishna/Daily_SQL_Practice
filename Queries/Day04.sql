--- Day04
--- Business Question:How many days each shipment took for delivery?
select shipment_id ,
    datediff(delivered_date,shipped_date) as deliverd_days
from shipments;
