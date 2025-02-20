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
BEGIN -- Rollback the transaction in case of an error
    ROLLBACK;
END;
-- Start the transaction
START TRANSACTION;
-- Create MySQL user at the server level
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
-- Assign the role to the user
SET @assign_role_query = CONCAT(
        'GRANT ''bean_role'' TO ''',
        p_username,
        '''@''%'';'
    );
PREPARE stmt
FROM @assign_role_query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
-- Apply changes
FLUSH PRIVILEGES;
-- Insert user into the beans table
INSERT INTO beans (alias, org_id, origin, skill_level)
VALUES (p_username, p_org_id, p_origin, p_skill_level);
-- Commit the transaction
COMMIT;
END // 

DELIMITER ;