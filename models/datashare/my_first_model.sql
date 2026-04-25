{% set var='manju' %}
select * from {{ source('my_sou', 'e_detail') }} where  ename='{{var}}' 


