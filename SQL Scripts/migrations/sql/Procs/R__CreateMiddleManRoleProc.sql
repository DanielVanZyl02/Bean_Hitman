DELIMITER // 

DROP PROCEDURE IF EXISTS CreateMiddlemanRole // 

CREATE PROCEDURE CreateMiddlemanRole() 
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    CREATE ROLE IF NOT EXISTS 'middleman_role';

    GRANT ALL PRIVILEGES ON hitmanassociation.organisations TO 'middleman_role';
    GRANT ALL PRIVILEGES ON hitmanassociation.contracts TO 'middleman_role';
    GRANT ALL PRIVILEGES ON hitmanassociation.clients TO 'middleman_role';
    GRANT SELECT ON hitmanassociation.contract_details TO 'middleman_role';

    FLUSH PRIVILEGES;

    COMMIT;
END // 

DELIMITER ;