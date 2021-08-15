{%- from 'volume_by_demographic.sql' import volume_by_demographic -%}

-- Get session volume by demographic
{{ volume_by_demographic('sessions', 'session_volume') }}
