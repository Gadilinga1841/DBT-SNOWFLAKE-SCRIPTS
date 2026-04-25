{% macro create_db_copy(s_db_name,db_name)%}
{% set var %}
create database {{db_name}} clone {{s_db_name}}
{% endset %}
{% do run_query(var) %}
{% endmacro %}