
    
    



select count(*) as validation_errors
from (

    select
        order_id

    from `tutorial-dbt-310721`.`northwind_etl`.`orders`
    where order_id is not null
    group by order_id
    having count(*) > 1

) validation_errors


