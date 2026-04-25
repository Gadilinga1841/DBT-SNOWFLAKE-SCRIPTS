{% set var='manju' %}
{{
    config(
        schema= 'public'
    )
}}

select * from {{ source('my_sou', 'e_detail') }} where  ename='{{var}}' 


