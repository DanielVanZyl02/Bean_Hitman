DELIMITER // 

DROP PROCEDURE IF EXISTS CreateMiddlemanUser // CREATE PROCEDURE CreateMiddlemanUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(50)
) 
BEGIN -- Create MySQL user at the server level
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
        'GRANT ''middleman_role'' TO ''',
        p_username,
        '''@''%'';'
    );
PREPARE stmt
FROM @assign_role_query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
-- Apply changes
FLUSH PRIVILEGES;
-- Insert user into the middlemen table
INSERT INTO middlemen (username)
VALUES (p_username);
END // 

DELIMITER;