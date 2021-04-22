
    
    



select count(*) as validation_errors
from (

    select
        customer_id

    from `tutorial-dbt-310721`.`dbt_isadora`.`dim_customers`
    where customer_id is not null
    group by customer_id
    having count(*) > 1

) validation_errors


