

  create or replace view `tutorial-dbt-310721`.`dbt_isadora`.`dim_products`
  OPTIONS()
  as with
    selected as (
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
            , is_discontinued
            , reorder_level
        from `tutorial-dbt-310721`.`dbt_isadora`.`stg_products`
    )

    , transformed as (
        select
        row_number() over (order by product_id) as product_sk
        , *
        from selected
    )

    select * from transformed;

