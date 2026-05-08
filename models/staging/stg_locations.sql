select
    placekey,
    parent_placekey,
    safegraph_brand_ids,
    location_id,
    store_id,

    trim(location_name) as location_name,
    trim(brands) as brands,

    upper(top_category) as top_category,
    upper(sub_category) as sub_category,
    naics_code,
    trim(category_tags) as category_tags,

    latitude,
    longitude,

    trim(street_address) as street_address,
    upper(city) as city,
    upper(region) as region,
    postal_code,
    upper(country) as country,
    iso_country_code,

    opened_on,
    closed_on,
    tracking_closed_since,

    open_hours,

    geometry_type,
    polygon_wkt,
    polygon_class,
    wkt_area_sq_meters,

    phone_number,

    is_synthetic,
    includes_parking_lot,
    enclosed

from {{ source('safedb', 'FROSTBYTE_TB_SAFEGRAPH_S') }}