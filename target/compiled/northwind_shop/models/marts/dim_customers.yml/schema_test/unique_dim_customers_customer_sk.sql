
    
    



select count(*) as validation_errors
from (

    select
        customer_sk

    from `tutorial-dbt-310721`.`dbt_isadora`.`dim_customers`
    where customer_sk is not null
    group by customer_sk
    having count(*) > 1

) validation_errors


