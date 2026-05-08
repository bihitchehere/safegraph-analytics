-- models/staging/stg_safegraph.sql

select *
from {{ source('safedb', 'FROSTBYTE_TB_SAFEGRAPH_S') }}