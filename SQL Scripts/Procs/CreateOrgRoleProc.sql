DELIMITER // 

DROP PROCEDURE IF EXISTS CreateOrgRole // 

CREATE PROCEDURE CreateOrgRole() 
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Rollback the transaction if any error occurs
        ROLLBACK;
    END;

    -- Start the transaction
    START TRANSACTION;

    -- Create the role if it doesn’t exist
    CREATE ROLE IF NOT EXISTS 'org_role';

    -- Grant permissions to insert into the `hits` table
    -- GRANT INSERT ON Hitman_Association.hits TO 'org_role';
    -- GRANT SELECT ON Hitman_Association.hits TO 'org_role';
    -- GRANT UPDATE ON Hitman_Association.hits TO 'org_role';
    -- GRANT DELETE ON Hitman_Association.hits TO 'org_role';
    GRANT ALL PRIVILEGES ON Hitman_Association.hits TO 'org_role';
    GRANT ALL PRIVILEGES ON Hitman_Association.beans TO 'org_role';
    GRANT SELECT ON Hitman_Association.suppliers TO 'org_role';
    GRANT ALL PRIVILEGES Hitman_Association.weapon_purchase TO 'org_role';
    GRANT ALL PRIVILEGES Hitman_Association.weapon_purchase_items TO 'org_role';
    GRANT SELECT ON Hitman_Association.weapons TO 'org_role';
    -- Grant EXECUTE permission on specific stored procedures
    GRANT EXECUTE ON PROCEDURE Hitman_Association.CreateHitContract TO 'org_role';

    -- Apply changes
    FLUSH PRIVILEGES;

    -- Commit the transaction
    COMMIT;
END // 

DELIMITER ;