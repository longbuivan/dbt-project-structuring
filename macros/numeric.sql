{% macro test_numeric(model, column_name) %}
    select count(*)
    from {{ model }}
    where {{ column_name }} REGEXP '^[0-9]+$'
{% endmacro %}