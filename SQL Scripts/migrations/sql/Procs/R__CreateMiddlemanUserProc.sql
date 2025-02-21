DELIMITER // 

DROP PROCEDURE IF EXISTS CreateMiddlemanUser // 
CREATE PROCEDURE CreateMiddlemanUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(50)
) 
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    SET @create_user_query = CONCAT(
            'CREATE USER ''',
            p_username,
            '''@''%'' IDENTIFIED BY ''',
            p_password,
            ''';'
        );
    PREPARE stmt
    FROM @create_user_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET @assign_role_query = CONCAT(
            'GRANT ''middleman_role'' TO ''',
            p_username,
            '''@''%'';'
        );
    PREPARE stmt
    FROM @assign_role_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    FLUSH PRIVILEGES;

    COMMIT;

END // 

DELIMITER ;