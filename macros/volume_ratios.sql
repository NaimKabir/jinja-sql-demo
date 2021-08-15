{% from 'volume_ratio.sql' import volume_ratio %}

{% macro volume_ratios(numerator_vol_refs, denominator_vol_ref) %}

select
    age_group,
    state,
    {%- for ref in numerator_vol_refs -%}
    {{ ref }}_over_{{ denominator_vol_ref }}
    {%- if not loop.last -%},{%- endif -%}
    {% endfor %}
from
    ({{ volume_ratio(numerator_vol_refs.0, denominator_vol_ref) }})
    as base
    {% for ref in numerator_vol_refs %}
    {% if not loop.first %}
    join
    ({{ volume_ratio(ref, denominator_vol_ref) }}) as {{ref}}_r
            on {{ref}}_r.age_group=base.age_group
            and {{ref}}_r.state=base.state
    {%- endif -%}
    {%- endfor -%}

{% endmacro %}