{%- from 'volume_by_demographic.sql' import volume_by_demographic -%}

-- Get purchase volume by demographic
{{ volume_by_demographic('purchases', 'purchase_volume') }}