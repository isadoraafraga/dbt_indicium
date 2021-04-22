with
    selected as (
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
        from `tutorial-dbt-310721`.`dbt_isadora`.`stg_employees`
    )

    , transformed as (
        select
        row_number() over (order by employee_id) as employee_sk
        , *
        from selected
    )

    select * from transformed