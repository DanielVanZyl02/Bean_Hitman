DELIMITER $$

CREATE PROCEDURE CreateHitContract(
    IN p_client_alias VARCHAR(50),
    IN p_organisation_name VARCHAR(100),
    IN p_target_description VARCHAR(255),
    IN p_target_image_url VARCHAR(2083),
    IN p_target_name VARCHAR(50),
    IN p_hit_start_date DATE,
    IN p_hit_due_date DATE,
    IN p_status VARCHAR(20),
    IN p_location_name VARCHAR(100),
    IN p_latitude DECIMAL(9,6),
    IN p_longitude DECIMAL(9,6),
    IN p_location_details VARCHAR(500),
    IN p_fertilizer DOUBLE,
    IN p_soil DOUBLE,
    IN p_nitrates DOUBLE,
    IN p_payment_status VARCHAR(50),
    IN p_bean_id INTEGER
)
BEGIN
    DECLARE v_client_id INT;
    DECLARE v_org_id INT;
    DECLARE v_contract_id INT;
    DECLARE v_location_id INT;
    DECLARE v_target_id INT;
    DECLARE v_hit_id INT;
    DECLARE v_payment_id INT;
    DECLARE v_bean_id INT;

    -- Step 1: Insert Client (if not exists)
    SELECT client_id INTO v_client_id FROM clients WHERE alias = p_client_alias;
    IF v_client_id IS NULL THEN
        INSERT INTO clients (alias) VALUES (p_client_alias);
        SET v_client_id = LAST_INSERT_ID();
    END IF;

    -- Step 2: Get Organisation ID
    SELECT org_id INTO v_org_id FROM organisations WHERE name = p_organisation_name;
    IF v_org_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Organisation does not exist.';
    END IF;

    -- Step 3: Insert Contract
    INSERT INTO contracts (organisation_id, client_id, start_date, end_date, status)
    VALUES (v_org_id, v_client_id, p_hit_start_date, p_hit_due_date, 'Active');
    SET v_contract_id = LAST_INSERT_ID();

    -- Step 4: Insert Location (if not exists)
    SELECT location_id INTO v_location_id FROM locations WHERE location_name = p_location_name;
    IF v_location_id IS NULL THEN
        INSERT INTO locations (location_name, latitude, longitude, details)
        VALUES (p_location_name, p_latitude, p_longitude, p_location_details);
        SET v_location_id = LAST_INSERT_ID();
    END IF;

    -- Step 5: Insert Target
    INSERT INTO targets (description, target_image_url, target_name) 
    VALUES (p_target_description, p_target_image_url, p_target_name);
    SET v_target_id = LAST_INSERT_ID();

    -- Step 6: Insert Payment
    INSERT INTO payments (fertilizer, soil, nitrates, status)
    VALUES (p_fertilizer, p_soil, p_nitrates, p_payment_status);
    SET v_payment_id = LAST_INSERT_ID();

    -- Step 7: Assign a Hitman (Bean) from the Organisation
    SELECT bean_id INTO v_bean_id FROM beans WHERE org_id = v_org_id AND bean_id = p_bean_id;
    IF v_bean_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No available hitmen in this organisation.';
    END IF;

    -- Step 8: Insert Hit
    INSERT INTO hits (target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id)
    VALUES (v_target_id, v_bean_id, v_contract_id, p_hit_start_date, p_hit_due_date, p_status, v_payment_id, v_location_id);
    SET v_hit_id = LAST_INSERT_ID();

    -- Final Output
    SELECT 'Hit successfully created' AS Message, v_hit_id AS Hit_ID;

END $$

DELIMITER ;
