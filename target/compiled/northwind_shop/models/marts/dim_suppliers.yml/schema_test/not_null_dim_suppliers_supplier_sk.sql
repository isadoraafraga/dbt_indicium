
    
    



select count(*) as validation_errors
from `tutorial-dbt-310721`.`dbt_isadora`.`dim_suppliers`
where supplier_sk is null


