with source as (
    select * from {{ source('raw', 'fhv_tripdata') }}
),
renamed as (
    select
        dispatching_base_num,
        cast(PUlocationid as integer) as pickup_location_id,
        cast(DOlocationid as integer) as dropoff_location_id,

        -- timestamps (standardized naming)
        cast(pickup_datetime as timestamp) as pickup_datetime,  
        cast(dropoff_datetime as timestamp) as dropoff_datetime,

        -- trip info
        SR_flag as shared_rides_flag,
        Affiliated_base_number as affiliated_base_number  
    from source
    -- Filter out records with null dispatching_base_num (data quality requirement)
    where dispatching_base_num is not null
)
select * from renamed