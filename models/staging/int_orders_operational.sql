select 
t1.orders_id
,t1.date_date
,t1.quantity
,t1.revenue
,t1.purchase_price
,t1.margin
,t2.shipping_fee
,t2.logcost
,t2.ship_cost7,
(margin + shipping_fee - logcost - ship_cost7) AS operational_margin
from {{ ref('int_orders_margin') }} t1
left Join {{ ref('stg_raw__ship') }} t2
using (orders_id)