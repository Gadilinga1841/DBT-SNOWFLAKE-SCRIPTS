{{
    config(
        materialized='table',
        transient=false,
        database='edw_dev_db1',
        schema='edw_dev_sc1',
        alias='my_em_d',
        query_tag='em_d'
    )
}}

{{ dbt_utils.deduplicate(
    relation=source('my_emp_linga', 'emp_linga'),
    partition_by='sno',
    order_by="sno",
   )
}}