USE hitman_association;
DELIMITER $$

-- Get the most successful beans by earnings
DROP PROCEDURE IF EXISTS GetTopEarningBeans
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
DROP PROCEDURE IF EXISTS GetTotalSpent
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
DROP PROCEDURE IF EXISTS GetHitCountPerBean
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
DROP PROCEDURE IF EXISTS GetMostUsedWeapon
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
DROP PROCEDURE IF EXISTS GetTopSpecializedBeans
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
DROP PROCEDURE IF EXISTS GetTopEarningOrganization
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
DROP PROCEDURE IF EXISTS GetTopClients
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
DROP PROCEDURE IF exists MonthlyHitRevenue $$
CREATE PROCEDURE MonthlyHitRevenue(payment_status VARCHAR(50))
BEGIN
    DECLARE Soil_Rate DECIMAL(10,2);
    DECLARE Fertilizer_Rate DECIMAL(10,2);
    DECLARE Nitrates_Rate DECIMAL(10,2);

    SELECT soil, fertilizer, nitrates INTO Soil_Rate, Fertilizer_Rate, Nitrates_Rate
    FROM currency_values LIMIT 1;
    
    SELECT 
        ROUND(SUM(p.soil),2) AS Raw_Soil,
        Soil_Rate,
        ROUND(SUM(p.fertilizer),2)AS Raw_Fertilizer,
		Fertilizer_Rate,
        ROUND(SUM(p.nitrates),2) AS Raw_Nitrate,
        Nitrates_Rate,
        ROUND((SUM(p.soil) * Soil_Rate),2)  AS Soil_Value,
        ROUND((SUM(p.fertilizer) * Fertilizer_Rate),2) AS Fertilizer_Value,
        ROUND((SUM(p.nitrates) * Nitrates_Rate),2) AS Nitrates_Value,
        ROUND((SUM(p.soil * Soil_Rate + p.fertilizer * Fertilizer_Rate + p.nitrates * Nitrates_Rate)),2) AS Total_Value, 
        MONTHNAME(h.hit_due_date) AS Month
    FROM hits h
    INNER JOIN payments p ON h.payment_id = p.payment_id
    WHERE h.status = 'Completed' AND p.status = payment_status
    GROUP BY Month
    ORDER BY Month;
END $$


-- Get Amounts due for each client
DROP PROCEDURE IF EXISTS OutstandingPayments $$
CREATE PROCEDURE OutstandingPayments(client_alias VARCHAR(50))
BEGIN
	SELECT h.hit_id as Hit_ID,  
    cl.alias AS Client,
    org.name AS Organisation,
    p.soil AS Soil,
    p.fertilizer AS Fertilizer,
    p.nitrates AS Nitrates
    FROM hits h
    INNER JOIN payments p ON p.payment_id = h.payment_id
    INNER JOIN contracts con ON con.contract_id = h.contract_id
    INNER JOIN organisations org ON org.org_id = con.organisation_id
    INNER JOIN clients cl ON cl.client_id = con.client_id
    WHERE cl.alias = client_alias
    AND p.status = 'Pending';
END $$

-- Beans Under Contracts
DROP PROCEDURE IF EXISTS BeansUnderContract $$
CREATE PROCEDURE BeansUnderClientContract(org_name VARCHAR(50))
BEGIN
	SELECT org.name, b.alias, con.contract_id
    FROM organisations org
    INNER JOIN beans b ON b.org_id = org.org_id
    INNER JOIN contracts con ON con.organisation_id = org.org_id
    WHERE org.name = org_name
    AND con.status = 'Active';
END $$

-- Bean
DROP PROCEDURE IF EXISTS BeanHitInfo $$
CREATE PROCEDURE BeanHitInfo(bean_alias VARCHAR(50), h_status VARCHAR(50))
BEGIN
	SELECT b.alias AS Bean_Alias, 
	t.description AS Target_Description,
    t.target_name AS Target_Name,
    h.hit_start_date AS Start_Date,
    h.hit_due_date AS Due_Date,
    l.longitude AS Location_Longitude,
    l.latitude AS Location_Latitude
    FROM beans b
    INNER JOIN hits h ON h.bean_id = b.bean_id
    INNER JOIN targets t ON t.target_id = h.target_id
    INNER JOIN locations l ON l.location_id = h.location_id
    WHERE b.alias = bean_alias
    AND h.status = h_status;
END $$

DROP PROCEDURE IF EXISTS BeanSpecInfo $$
CREATE PROCEDURE BeanSpecInfo(bean_alias VARCHAR(50))
BEGIN
	SELECT b.alias AS Bean_Alias, 
    b.skill_level AS Bean_Skill,
    s.spec_name AS Specialisation
    FROM beans b
	INNER JOIN spec_bean sb ON sb.bean_id = b.bean_id
    INNER JOIN specialisations s ON s.spec_id = sb.spec_id
    WHERE b.alias = bean_alias;
END $$

DELIMITER ;