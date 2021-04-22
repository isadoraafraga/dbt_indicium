
    
    



select count(*) as validation_errors
from `tutorial-dbt-310721`.`northwind_etl`.`orders`
where order_id is null


