{{ config(materialized='table') }}

WITH tb1 as(
    select id as order_id,
    order_date,
    user_id as customer_id,
    status

    from {{source('datafeed_shared_schema','orders')}})
select * from tb1
