select *,
(margin + shipping_fee - log_cost - ship_cost) AS operational_margin
from {{ ref('int_orders_margin') }} t1
right Join {{ ref('stg_raw__ship') }} t2
using (orders_id)