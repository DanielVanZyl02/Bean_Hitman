DELIMITER //

DROP PROCEDURE IF EXISTS CreateBeanRole //

CREATE PROCEDURE CreateBeanRole()
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    CREATE ROLE IF NOT EXISTS 'bean_role';

    GRANT SELECT ON hitmanassociation.beans TO 'bean_role';
    GRANT SELECT ON hitmanassociation.specialisations TO 'bean_role';
    GRANT SELECT ON hitmanassociation.weapons TO 'bean_role';
    FLUSH PRIVILEGES;

    COMMIT;
END //
DELIMITER ;