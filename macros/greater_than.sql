{% macro test_greater_than(model, column_name, value) %}
    select count(*)
    from {{ model }}
    where {{ column_name }} <= {{ value }}
{% endmacro %}