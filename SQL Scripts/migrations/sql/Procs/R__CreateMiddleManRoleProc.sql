DELIMITER // 

DROP PROCEDURE IF EXISTS CreateMiddlemanRole // 

CREATE PROCEDURE CreateMiddlemanRole() 
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Rollback the transaction in case of an error
        ROLLBACK;
    END;

    -- Start the transaction
    START TRANSACTION;

    -- Create the role if it doesn’t exist
    CREATE ROLE IF NOT EXISTS 'middleman_role';

    -- Grant all privileges on specific tables
    GRANT ALL PRIVILEGES ON Hitman_Association.organisations TO 'middleman_role';
    GRANT ALL PRIVILEGES ON Hitman_Association.contracts TO 'middleman_role';
    GRANT ALL PRIVILEGES ON Hitman_Association.clients TO 'middleman_role';
    GRANT SELECT ON Hitman_Association.contract_details TO 'middleman_role';

    -- Apply changes
    FLUSH PRIVILEGES;

    -- Commit the transaction
    COMMIT;
END // 

DELIMITER ;