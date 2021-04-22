

  create or replace view `tutorial-dbt-310721`.`dbt_isadora`.`dim_customers`
  OPTIONS()
  as with
    selected as (
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
        from `tutorial-dbt-310721`.`dbt_isadora`.`stg_customers`
    )

    , transformed as (
        select
        row_number() over (order by customer_id) as customer_sk
        , *
        from selected
    )

    select * from transformed;

