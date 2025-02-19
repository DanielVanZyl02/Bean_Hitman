CREATE VIEW hit_details AS
SELECT DISTINCT
    h.hit_id,
    t.target_name,
    b.alias AS bean_alias,
    o.name AS org_name,
    cl.alias AS client_alias,
    h.hit_start_date,
    h.hit_due_date,
    h.status AS hit_status,
    p.status AS payment_status,
    p.fertilizer,
    p.soil,
    p.nitrates,
    l.location_name
FROM
    hits h
    JOIN targets t ON h.target_id = t.target_id
    JOIN beans b ON h.bean_id = b.bean_id
    JOIN contracts c ON h.contract_id = c.contract_id
    JOIN organisations o ON c.organisation_id = o.org_id
    JOIN clients cl ON c.client_id = cl.client_id
    JOIN payments p ON h.payment_id = p.payment_id
    LEFT JOIN locations l ON h.location_id = l.location_id
    LEFT JOIN weapon_purchase w ON h.weapon_purchase_id = w.purchase_id;