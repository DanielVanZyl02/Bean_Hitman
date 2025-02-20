select 'Creating view bean_details';
CREATE OR REPLACE VIEW bean_details AS
SELECT b.bean_id,
    b.alias,
    o.name AS organisation_name,
    b.origin,
    b.skill_level
FROM beans b
    JOIN organisations o ON b.org_id = o.org_id;