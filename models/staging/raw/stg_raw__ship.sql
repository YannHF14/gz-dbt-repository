with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        logcost,
        CAST (ship_cost as FLOAT64) as ship_cost,
        shipping_fee, 
        shipping_fee_1
        

    from source

)

select * from renamed
