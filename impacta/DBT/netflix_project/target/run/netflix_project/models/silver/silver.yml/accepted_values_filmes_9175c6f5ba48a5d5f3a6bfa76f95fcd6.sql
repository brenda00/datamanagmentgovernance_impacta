select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        RELEASE_YEAR as value_field,
        count(*) as n_records

    from NETFLIX.SILVER.filmes
    group by RELEASE_YEAR

)

select *
from all_values
where value_field not in (
    '2019','2020','2021','2022','2023'
)



      
    ) dbt_internal_test