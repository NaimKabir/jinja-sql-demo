{%- macro volume_by_demographic(entity_table, count_col_name) -%}

select
    users.age_group,
    users.state,
    count(*) as {{ count_col_name }}
from {{ entity_table }}
    join users on {{ entity_table }}.user_id=users.user_id
group by 1,2

{%- endmacro -%}