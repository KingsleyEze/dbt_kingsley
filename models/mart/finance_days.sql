
 select
count(orders_id) as nb_transactions
,date_date
,SUM(shipping_fee) AS shipping_fee
,SUM(revenue) AS total_revenue
,Avg(revenue) As average_basket
,SUM(purchase_price) AS purchase_cost
,SUM(logcost) AS logcost
,SUM(ship_cost7) AS ship_cost
,SUM(operational_margin) AS operational_margin
,SUM(quantity) AS quantity
From {{ ref('int_orders_operational') }}
Group by date_date