
    
    



select count(*) as validation_errors
from `tutorial-dbt-310721`.`dbt_isadora`.`dim_employees`
where employee_sk is null


