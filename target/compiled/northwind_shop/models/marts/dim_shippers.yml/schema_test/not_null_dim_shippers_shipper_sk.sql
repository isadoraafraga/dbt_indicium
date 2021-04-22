
    
    



select count(*) as validation_errors
from `tutorial-dbt-310721`.`dbt_isadora`.`dim_shippers`
where shipper_sk is null


