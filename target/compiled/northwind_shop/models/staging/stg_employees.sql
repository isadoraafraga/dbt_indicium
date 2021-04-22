with
    source as (
        select
            /*Primary Key*/
            employee_id

            , country
            , city
            , postal_code
            , hire_date
            , extension
            , address
            , birth_date
            , region
            , photo_path
            , last_name
            , first_name
            , title
            , title_of_courtesy
            , notes
            , home_phone
            , reports_to

           /*Stitch Columns*/
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
            , _sdc_sequence
            , _sdc_table_version
            , _sdc_received_at
        from `tutorial-dbt-310721`.`northwind_etl`.`employees`
    )

    select * from source