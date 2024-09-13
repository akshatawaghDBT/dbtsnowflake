{% macro suspend_warehouse(warehouse_name) %}
    {% set sql %}
        ALTER WAREHOUSE {{ warehouse_name }} SUSPEND;
    {% endset %}

    {% do run_query(sql) %}
{% endmacro %}
