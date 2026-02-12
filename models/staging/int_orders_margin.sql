select orders_id,date_date,SUM(revenue) AS revenue
,SUM(purchase_price) As purchase_price
,SUM(margin) AS margin
from {{ ref('sales_margin') }}
Group by orders_id,date_date