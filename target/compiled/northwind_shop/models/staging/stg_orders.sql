with
    source as (
        select
            /*Primary Key*/
            order_id

            /*Foreign Keys*/
            , employee_id
            , customer_id            
            , ship_via as shipper_id

            , ship_region
            , shipped_date
            , ship_country
            , ship_name
            , order_date
            , ship_postal_code
            , ship_city
            , freight
            , required_date
            , ship_address

           /*Stitch Columns*/
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
            , _sdc_sequence
            , _sdc_table_version
            , _sdc_received_at
        from `tutorial-dbt-310721`.`northwind_etl`.`orders`
    )

    select * from source