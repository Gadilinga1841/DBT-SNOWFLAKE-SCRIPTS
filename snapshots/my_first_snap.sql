{% snapshot my_snap %}
    {{
        config(
            target_schema='edw_dev_sc',
            target_database='edw_dev_db',
            unique_key='empno',
            strategy='check',
            check_cols='all',
            invalidate_hard_deletes=True
        )
    }}

    select * from {{ source('my_sou', 'e_detail') }}
 {% endsnapshot %}