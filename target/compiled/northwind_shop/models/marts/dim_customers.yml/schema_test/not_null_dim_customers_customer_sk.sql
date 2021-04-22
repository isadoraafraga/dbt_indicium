
    
    



select count(*) as validation_errors
from `tutorial-dbt-310721`.`dbt_isadora`.`dim_customers`
where customer_sk is null


