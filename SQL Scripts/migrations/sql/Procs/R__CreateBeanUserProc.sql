DELIMITER // 

DROP PROCEDURE IF EXISTS CreateBeanUser // 

CREATE PROCEDURE CreateBeanUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(50),
    IN p_org_id INT,
    IN p_origin VARCHAR(50),
    IN p_skill_level VARCHAR(50)
) BEGIN
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
        'GRANT ''bean_role'' TO ''',
        p_username,
        '''@''%'';'
    );
PREPARE stmt
FROM @assign_role_query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

FLUSH PRIVILEGES;

INSERT INTO beans (alias, org_id, origin, skill_level)
VALUES (p_username, p_org_id, p_origin, p_skill_level);

COMMIT;
END // 

DELIMITER ;