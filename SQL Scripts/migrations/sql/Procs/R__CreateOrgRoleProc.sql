DELIMITER // 

DROP PROCEDURE IF EXISTS CreateOrgRole // 

CREATE PROCEDURE CreateOrgRole() 
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    CREATE ROLE IF NOT EXISTS 'org_role';

    -- GRANT INSERT ON Hitman_Association.hits TO 'org_role';
    -- GRANT SELECT ON Hitman_Association.hits TO 'org_role';
    -- GRANT UPDATE ON Hitman_Association.hits TO 'org_role';
    -- GRANT DELETE ON Hitman_Association.hits TO 'org_role';
    GRANT ALL PRIVILEGES ON hitmanassociation.hits TO 'org_role';
    GRANT ALL PRIVILEGES ON hitmanassociation.beans TO 'org_role';
    GRANT SELECT ON hitmanassociation.suppliers TO 'org_role';
    GRANT ALL PRIVILEGES ON hitmanassociation.weapon_purchase TO 'org_role';
    GRANT ALL PRIVILEGES ON hitmanassociation.weapon_purchase_items TO 'org_role';
    GRANT SELECT ON hitmanassociation.weapons TO 'org_role';

    GRANT EXECUTE ON PROCEDURE hitmanassociation.CreateHitContract TO 'org_role';

    FLUSH PRIVILEGES;

    COMMIT;
END // 

DELIMITER ;