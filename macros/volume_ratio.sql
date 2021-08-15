{%- from 'volume_by_demographic.sql' import volume_by_demographic -%}

{% macro volume_ratio(
    numerator_vol_ref,
    denominator_vol_ref
) %}

select
    age_group,
    state,
    N / D as {{ numerator_vol_ref }}_over_{{ denominator_vol_ref }}
from (
        {{ volume_by_demographic(numerator_vol_ref, 'N') }}
     ) p
    join (
        {{ volume_by_demographic(denominator_vol_ref, 'D') }}
    ) s
    on p.age_group=s.age_group
    and p.state=s.state

{% endmacro %}

