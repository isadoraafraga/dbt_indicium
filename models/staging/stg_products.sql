with
    source as (
        select
            /*Primary Key*/
            product_id

            /*Foreign Keys*/
            , category_id
            , supplier_id

            , product_name
            , unit_price
            , units_in_stock            
            , quantity_per_unit
            , units_on_order
            , 
                case
                    when discontinued = 1 then true
                    else false 
                end as is_discontinued
            , reorder_level

           /*Stitch Columns*/
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
            , _sdc_sequence
            , _sdc_table_version
            , _sdc_received_at
        from {{ source('northwind_etl','products')}}
    )

    select * from source