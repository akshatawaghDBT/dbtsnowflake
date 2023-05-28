
  create view "sales"."public"."v_staging_orders__dbt_tmp"
    
    
  as (
    --AutomateDV code to generate a staging table in DV model



-- Generated by AutomateDV (formerly known as dbtvault)

    

WITH source_data AS (

    SELECT

    order_id,
    customer_id,
    order_date,
    status

    FROM "sales"."public"."stg_orders"
),

derived_columns AS (

    SELECT

    order_id,
    customer_id,
    order_date,
    status,
    '1' AS SOURCE,
    28/05/2023 AS LOAD_DATETIME,
    ORDER_DATE AS EFFECTIVE_FROM,
    ORDER_DATE AS START_DATE,
    TO_DATE('99991231','YYYYMMDD') AS END_DATE

    FROM source_data
),

columns_to_select AS (

    SELECT

    order_id,
    customer_id,
    order_date,
    status,
    SOURCE,
    LOAD_DATETIME,
    EFFECTIVE_FROM,
    START_DATE,
    END_DATE

    FROM derived_columns
)

SELECT * FROM columns_to_select
  );