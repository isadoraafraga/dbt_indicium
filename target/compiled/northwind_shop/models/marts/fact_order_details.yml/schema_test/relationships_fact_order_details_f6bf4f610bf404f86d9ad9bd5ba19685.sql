
    
    




select count(*) as validation_errors
from (
    select customer_fk as id from `tutorial-dbt-310721`.`dbt_isadora`.`fact_order_details`
) as child
left join (
    select customer_sk as id from `tutorial-dbt-310721`.`dbt_isadora`.`dim_customers`
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null


