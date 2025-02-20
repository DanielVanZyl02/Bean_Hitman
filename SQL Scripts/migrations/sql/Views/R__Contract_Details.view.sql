select 'Creating view contract_details';
CREATE OR REPLACE VIEW contract_details AS
SELECT c.contract_id,
    o.name AS organisation_name,
    cl.alias AS client_name,
    c.start_date,
    c.end_date,
    c.status
FROM contracts c
    JOIN organisations o ON c.organisation_id = o.org_id
    JOIN clients cl ON c.client_id = cl.client_id;