{{ config(
    materialized='incremental' , unique_key='d_date'
)}}

select * from demo_sh.dates
where d_date <= current_Date

{% if is_incremental() %}
and d_date > (Select max(d_date) from {{this}})
or d_date < current_date
{% endif %}