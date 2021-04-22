
    
    



select count(*) as validation_errors
from `tutorial-dbt-310721`.`dbt_isadora`.`fact_order_details`
where order_id is null


