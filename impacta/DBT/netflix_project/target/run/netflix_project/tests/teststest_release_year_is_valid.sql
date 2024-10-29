select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT *
FROM NETFLIX.BRONZE.netflix_titles
WHERE release_year < 1950
      
    ) dbt_internal_test