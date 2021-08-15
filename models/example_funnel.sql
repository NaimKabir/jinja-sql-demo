{%- from 'volume_ratios.sql' import volume_ratios -%}

{{ volume_ratios([
        'purchases',
        'sessions',
        'supportTickets'
        ],
   'marketing_pushes')
}}
