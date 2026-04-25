{% macro sus_warehouse(war_name) %}
    alter warehouse {{war_name}} suspend;
{% endmacro %}