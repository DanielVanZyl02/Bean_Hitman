DELIMITER //

DROP PROCEDURE IF EXISTS CreateBeanRole //

CREATE PROCEDURE CreateBeanRole()
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Rollback the transaction if any error occurs
        ROLLBACK;
    END;

    -- Start the transaction
    START TRANSACTION;

    CREATE ROLE IF NOT EXISTS 'bean_role';
    -- Grant EXECUTE permission on specific stored procedures
    GRANT SELECT ON Hitman_Association.beans TO 'bean_role';
    GRANT SELECT ON Hitman_Association.specialisations TO 'bean_role';
    GRANT SELECT ON Hitman_Association.weapons TO 'bean_role';
    -- Apply changes
    FLUSH PRIVILEGES;

    -- Commit the transaction
    COMMIT;
END //
DELIMITER ;