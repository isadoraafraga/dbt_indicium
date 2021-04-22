

  create or replace view `tutorial-dbt-310721`.`dbt_isadora`.`stg_customers`
  OPTIONS()
  as with
    source as (
        select
            /*Primary Key*/
            customer_id

            , country	
            , city	
            , fax	
            , postal_code		
            , address	
            , region
            , contact_name	
            , phone	
            , company_name	
            , contact_title	

           /*Stitch Columns*/
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
            , _sdc_sequence
            , _sdc_table_version
            , _sdc_received_at
        from `tutorial-dbt-310721`.`northwind_etl`.`customers`
    )

    select * from source;

