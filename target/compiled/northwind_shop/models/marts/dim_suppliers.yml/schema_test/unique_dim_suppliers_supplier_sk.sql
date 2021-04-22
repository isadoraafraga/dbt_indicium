
    
    



select count(*) as validation_errors
from (

    select
        supplier_sk

    from `tutorial-dbt-310721`.`dbt_isadora`.`dim_suppliers`
    where supplier_sk is not null
    group by supplier_sk
    having count(*) > 1

) validation_errors


