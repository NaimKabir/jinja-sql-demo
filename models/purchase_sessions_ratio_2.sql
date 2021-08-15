{%- from 'volume_ratio.sql' import volume_ratio -%}

-- Get ratio of purchases to sessions for a demographic group
{{ volume_ratio('purchases', 'sessions')}}