
    
    



select count(*) as validation_errors
from (

    select
        shipper_sk

    from `tutorial-dbt-310721`.`dbt_isadora`.`dim_shippers`
    where shipper_sk is not null
    group by shipper_sk
    having count(*) > 1

) validation_errors


