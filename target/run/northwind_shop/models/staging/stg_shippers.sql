

  create or replace view `tutorial-dbt-310721`.`dbt_isadora`.`stg_shippers`
  OPTIONS()
  as with
    source as (
        select
            /*Primary Key*/
            shipper_id

            , phone
            , company_name

           /*Stitch Columns*/
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
            , _sdc_sequence
            , _sdc_table_version
            , _sdc_received_at
        from `tutorial-dbt-310721`.`northwind_etl`.`shippers`
    )

    select * from source;

