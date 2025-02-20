DELIMITER // CREATE PROCEDURE CreateMiddlemanUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(50)
) BEGIN -- Create MySQL user at the server level
CREATE USER p_username @'%' IDENTIFIED BY p_password;
-- Grant privileges
GRANT SELECT,
    INSERT,
    UPDATE ON main_db.middlemen TO p_username @'%';
-- Apply changes
FLUSH PRIVILEGES;
-- Insert user into the middlemen table
INSERT INTO middlemen (username)
VALUES (p_username);
END // DELIMITER;