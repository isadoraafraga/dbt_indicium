
    
    



select count(*) as validation_errors
from (

    select
        product_sk

    from `tutorial-dbt-310721`.`dbt_isadora`.`dim_products`
    where product_sk is not null
    group by product_sk
    having count(*) > 1

) validation_errors


