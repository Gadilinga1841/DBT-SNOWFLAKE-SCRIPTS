{% set var='manju' %}
{{
    config(
        schema= 'public',
        pre_hook=["{{set_warehouse(var('wareh'))}}","insert into edw_dev_db1.edw_dev_sc1.aut_lo(model_name,start_time) values('my_first_model',current_timestamp())"],
        post_hook=[
            "{{sus_warehouse(var('wareh'))}}",
            "{{set_warehouse(var('default_wh'))}}",
            "update edw_dev_db1.edw_dev_sc1.aut_lo set end_time=current_timestamp(),cnt=(select count(*) from {{this}})"
        ]
    )
}}

select * from {{ source('my_sou', 'e_detail') }} where  ename='{{var}}' 


