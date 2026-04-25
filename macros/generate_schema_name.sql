{% macro generate_schema_name(cos_sc_name,node) %}
{% if cos_sc_name is not none %}
{{cos_sc_name}}
{% else %}
    {{target.schema}}
{% endif %}
{% endmacro %}