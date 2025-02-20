-- we create the contract between an organisation and client
-- we're assuming the client, organisation and bean already exist

-- CALL CreateHitContract(
--     'New Client',               -- p_client_alias
--     'The Brotherhood',      -- p_organisation_name
--     'High-profile target',   -- p_target_description
--     'https://example.com/image.jpg', -- p_target_image_url
--     'Mr. X',                 -- p_target_name
--     '2025-02-20',            -- p_hit_start_date
--     '2025-03-20',            -- p_hit_due_date
--     'Scheduled',             -- p_status
--     'Downtown Warehouse',    -- p_location_name
--     37.7749,                 -- p_latitude
--     -122.4194,               -- p_longitude
--     'Hidden in the basement',-- p_location_details
--     5000.00,                 -- p_fertilizer
--     2000.00,                 -- p_soil
--     1500.00,                 -- p_nitrates
--     'Pending',               -- p_payment_status
--     1                        -- p_bean_id
-- );

CALL CreateContract(
    'adamsthomas',
    'Division',
    '2025-02-25',
    '2025-03-31'
);
