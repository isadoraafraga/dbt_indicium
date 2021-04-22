
    
    




select count(*) as validation_errors
from (
    select shipper_fk as id from `tutorial-dbt-310721`.`dbt_isadora`.`fact_order_details`
) as child
left join (
    select shipper_sk as id from `tutorial-dbt-310721`.`dbt_isadora`.`dim_shippers`
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null


