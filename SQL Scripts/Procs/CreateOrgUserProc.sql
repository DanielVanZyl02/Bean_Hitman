DELIMITER $$ CREATE PROCEDURE CreateOrgUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(50),
    IN p_type VARCHAR(50)
) BEGIN -- Create MySQL user at the server level
CREATE USER p_username @'%' IDENTIFIED BY p_password;
-- Grant privileges
GRANT SELECT,
    INSERT,
    UPDATE ON main_db.organisations TO p_username @'%';
-- Apply changes
FLUSH PRIVILEGES;
-- Insert user into the organisations table
INSERT INTO organisations (username, type)
VALUES (p_username, p_type);
END $$ DELIMITER;