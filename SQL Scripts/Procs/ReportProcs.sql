USE hitman_association;
DELIMITER $$

DROP PROCEDURE IF EXISTS GetTopEarningBeans;
CREATE PROCEDURE GetTopEarningBeans(limit_count INT)
BEGIN
    SELECT 
        b.bean_id,
        b.alias,
        SUM(p.fertilizer + p.soil + p.nitrates) AS total_earnings
    FROM hits h
    INNER JOIN beans b ON h.bean_id = b.bean_id
    INNER JOIN payments p ON h.payment_id = p.payment_id
    WHERE h.status = 'Completed'
    GROUP BY b.bean_id, b.alias
    ORDER BY total_earnings DESC
    LIMIT limit_count;
END $$

-- Get the total amount of nutrients, soil, and fertilizer paid for all hits
DROP PROCEDURE IF EXISTS GetTotalSpent$$
CREATE PROCEDURE GetTotalSpent()
BEGIN
    SELECT 
        SUM(fertilizer) AS total_fertilizer,
        SUM(soil) AS total_soil,
        SUM(nitrates) AS total_nitrates,
        SUM(fertilizer + soil + nitrates) AS total_spent
    FROM payments;
END $$



-- Calculate the total number of hits performed per bean
DROP PROCEDURE IF EXISTS GetHitCountPerBean$$
CREATE PROCEDURE GetHitCountPerBean()
BEGIN
    SELECT 
        b.bean_id,
        b.alias,
        COUNT(h.hit_id) AS total_hits
    FROM beans b
    INNER JOIN hits h ON b.bean_id = h.bean_id
    GROUP BY b.bean_id, b.alias
    ORDER BY total_hits DESC;
END $$

-- Find the Most Used Weapon in Successful Hits
DROP PROCEDURE IF EXISTS GetMostUsedWeapon$$
CREATE PROCEDURE GetMostUsedWeapon()
BEGIN
    SELECT 
        w.name AS weapon_name,
        COUNT(h.hit_id) AS usage_count
    FROM hits h
    INNER JOIN weapon_purchase wp ON h.weapon_purchase_id = wp.purchase_id
    INNER JOIN weapon_purchase_items wpi ON wp.purchase_id = wpi.purchase_id
    INNER JOIN weapons w ON wpi.weapon_id = w.weapon_id
    WHERE h.status = 'Completed'
    GROUP BY w.name
    ORDER BY usage_count DESC
    LIMIT 1;
END $$

-- List Beans with the Most Specializations
DROP PROCEDURE IF EXISTS GetTopSpecializedBeans$$
CREATE PROCEDURE GetTopSpecializedBeans(limit_count INT)
BEGIN
    SELECT 
        b.bean_id,
        b.alias,
        COUNT(sb.spec_id) AS specialization_count
    FROM beans b
    JOIN spec_bean sb ON b.bean_id = sb.bean_id
    GROUP BY b.bean_id, b.alias
    ORDER BY specialization_count DESC
    LIMIT limit_count;
END $$


-- Get Most Profitable Organization
DROP PROCEDURE IF EXISTS GetTopEarningOrganization$$
CREATE PROCEDURE GetTopEarningOrganization()
BEGIN
    SELECT 
        o.name AS organization_name,
        SUM(p.fertilizer + p.soil + p.nitrates) AS total_earnings
    FROM organisations o
    JOIN beans b ON o.org_id = b.org_id
    JOIN hits h ON b.bean_id = h.bean_id
    JOIN payments p ON h.payment_id = p.payment_id
    WHERE h.status = 'Completed'
    GROUP BY o.name
    ORDER BY total_earnings DESC
    LIMIT 1;
END $$

-- Get Clients with the Most Contracts
DROP PROCEDURE IF EXISTS GetTopClients$$
CREATE PROCEDURE GetTopClients(limit_count INT)
BEGIN
    SELECT 
        c.alias AS client_alias,
        COUNT(con.contract_id) AS total_contracts
    FROM clients c
    JOIN contracts con ON c.client_id = con.client_id
    GROUP BY c.alias
    ORDER BY total_contracts DESC
    LIMIT limit_count;
END $$


-- Monthly Revenue Report
DROP PROCEDURE IF EXISTS MonthlyHitRevenue$$
CREATE PROCEDURE MonthlyHitRevenue()
BEGIN
    SELECT 
    SUM(p.fertilizer + p.nitrates + p.soil) AS Revenue,
    monthname(h.hit_due_date) AS MonthDue
    FROM hits h
    INNER JOIN payments p ON h.payment_id = p.payment_id
    WHERE h.status = 'Completed'    
    GROUP BY MonthDue;
END $$

DELIMITER ;