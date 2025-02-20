DELIMITER // 

DROP PROCEDURE IF EXISTS CreateOrgUser // 

CREATE PROCEDURE CreateOrgUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(50),
    IN p_type VARCHAR(50)
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION 
BEGIN -- Rollback transaction on error
    ROLLBACK;
END;
-- Start transaction
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
        'GRANT ''org_role'' TO ''',
        p_username,
        '''@''%'';'
    );
PREPARE stmt
FROM @assign_role_query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
-- Apply changes
FLUSH PRIVILEGES;
-- Insert user into the organisations table
INSERT INTO organisations (name, type)
VALUES (p_username, p_type);
-- Commit transaction
COMMIT;
END // 

DELIMITER ;