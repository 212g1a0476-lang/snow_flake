{{ config(materialized='table') }}

WITH tb1 as(
    select *

    from {{ref('emp_seed')}})
select * from tb1
