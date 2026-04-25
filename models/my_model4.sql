{{
    config(
        materialized='incremental',
        on_schema_change="sync_all_columns"
        
    )
}}
select * from {{ source('my_sou', 'e_detail') }}

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where empno > (select max(empno) from {{ this }}) 
{% endif %}