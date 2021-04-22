

  create or replace view `tutorial-dbt-310721`.`dbt_isadora`.`stg_order_details`
  OPTIONS()
  as with
    source as (
        select
	        /*Primary Key*/
            order_id

            /*Foreign Keys*/
            , product_id

            , discount
            , unit_price
            , quantity

           /*Stitch Columns*/
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
            , _sdc_sequence
            , _sdc_table_version
            , _sdc_received_at
        from `tutorial-dbt-310721`.`northwind_etl`.`order_details`
    )

    select * from source;

