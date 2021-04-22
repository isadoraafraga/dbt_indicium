
    
    




select count(*) as validation_errors
from (
    select supplier_fk as id from `tutorial-dbt-310721`.`dbt_isadora`.`fact_order_details`
) as child
left join (
    select supplier_sk as id from `tutorial-dbt-310721`.`dbt_isadora`.`dim_suppliers`
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null


