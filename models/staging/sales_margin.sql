select t1.*,t2.purchase_price
,t1.revenue- (t2.purchase_price*t1.quantity) AS margin
,t1.quantity*purchase_price AS purchase_cost

from {{ ref('stg_raw__sales') }} AS t1
inner join {{ ref('stg_raw__product') }} AS t2
using (products_id)