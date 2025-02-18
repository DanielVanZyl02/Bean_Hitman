CREATE VIEW hit_details AS
SELECT
    h.hit_id,
    t.description as target_name,
    b.alias AS bean_alias,
    c.organisation_id,
    c.client_id,
    h.hit_start_date,
    h.hit_due_date,
    h.status AS hit_status,
    p.status AS payment_status,
    p.fertilizer,
    p.soil,
    p.nitrates,
    l.location_name,
    w.purchase_id AS weapon_id
FROM
    hits h
    JOIN targets t ON h.target_id = t.target_id
    JOIN beans b ON h.bean_id = b.bean_id
    JOIN contracts c ON h.contract_id = c.contract_id
    JOIN payments p ON h.payment_id = p.payment_id
    LEFT JOIN locations l ON h.location_id = l.location_id
    LEFT JOIN weapon_purchase w ON h.weapon_purchase_id = w.purchase_id;