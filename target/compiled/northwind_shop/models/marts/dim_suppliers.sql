with

    divisions as (
        select *
        from `tutorial-dbt-310721`.`dbt_isadora`.`seed_divisions`
    )

    , suppliers as (
        select
            /*Primary Key*/
             supplier_id

            , country
            , city
            , fax
            , postal_code
            , homepage
            , address
            , region 
            , contact_name
            , phone
            , company_name
            , contact_title
        from `tutorial-dbt-310721`.`dbt_isadora`.`stg_suppliers`
    )


    , transformed as (
        select
        row_number() over (order by supplier_id) as supplier_sk
            , suppliers.country
            , suppliers.city
            , suppliers.fax
            , suppliers.postal_code
            , suppliers.homepage
            , suppliers.address
            , suppliers.region 
            , suppliers.contact_name
            , suppliers.phone
            , suppliers.company_name
            , suppliers.contact_title
            , divisions.division
        from suppliers
        left join divisions on suppliers.country = divisions.country
    )

    select * from transformed