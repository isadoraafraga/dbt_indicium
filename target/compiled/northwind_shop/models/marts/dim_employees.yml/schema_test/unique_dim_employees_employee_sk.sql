
    
    



select count(*) as validation_errors
from (

    select
        employee_sk

    from `tutorial-dbt-310721`.`dbt_isadora`.`dim_employees`
    where employee_sk is not null
    group by employee_sk
    having count(*) > 1

) validation_errors


