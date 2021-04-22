

  create or replace view `tutorial-dbt-310721`.`dbt_isadora`.`dim_shippers`
  OPTIONS()
  as with
    selected as (
        select
            /*Primary Key*/
            shipper_id

            , phone
            , company_name
        from `tutorial-dbt-310721`.`dbt_isadora`.`stg_shippers`
    )

    , transformed as (
        select
        row_number() over (order by shipper_id) as shipper_sk
        , *
        from selected
    )

    select * from transformed;

