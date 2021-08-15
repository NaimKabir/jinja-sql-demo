{%- from 'volume_by_demographic.sql' import volume_by_demographic -%}

-- Get ratio of purchases to sessions for a demographic group

select
    age_group,
    state,
    purchase_volume / session_volume as ratio
from (
        {{ volume_by_demographic('purchases', 'purchase_volume') }}
     ) p
    join (
        {{ volume_by_demographic('sessions', 'session_volume') }}
    ) s
    on p.age_group=s.age_group
    and p.state=s.state