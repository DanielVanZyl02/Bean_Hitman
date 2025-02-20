USE hitman_association;
DROP PROCEDURE IF EXISTS CreateContract;

DELIMITER $$

CREATE PROCEDURE CreateContract(
    IN p_client_alias VARCHAR(50),
    IN p_organisation_name VARCHAR(100),
    IN p_start_date DATE,
    IN p_end_date DATE
)
BEGIN
    DECLARE v_client_id INT;
    DECLARE v_org_id INT;
    DECLARE v_contract_id INT;

    -- Get Client ID
    SELECT client_id INTO v_client_id FROM clients WHERE alias = p_client_alias;
    IF v_client_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Client does not exist.';
    END IF;

    -- Get Organisation ID
    SELECT org_id INTO v_org_id FROM organisations WHERE name = p_organisation_name;
    IF v_org_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Organisation does not exist.';
    END IF;

    -- Insert Contract
    INSERT INTO contracts (organisation_id, client_id, start_date, end_date, status)
    VALUES (v_org_id, v_client_id, p_start_date, p_end_date, 'Active');
    SET v_contract_id = LAST_INSERT_ID();

    -- Final Output
    SELECT 'Contract successfully created' AS Message, v_contract_id AS contract_id;
END $$

DELIMITER ;
