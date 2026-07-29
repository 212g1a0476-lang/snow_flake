SELECT
    id,
    COUNT(*) AS duplicate_count
FROM {{ source('datafeed_shared_schema', 'orders') }}
GROUP BY id
HAVING COUNT(*) > 1
