with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        cast (ship_cost AS numeric) AS ship_cost7

    from source

)

select * from renamed
