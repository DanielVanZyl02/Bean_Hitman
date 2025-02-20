DELIMITER $$ CREATE PROCEDURE CreateBeanUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(50),
    IN p_org_id INT,
    IN p_origin VARCHAR(50),
    IN p_skill_level VARCHAR(50)
) BEGIN -- Create MySQL user at the server level
CREATE USER p_username @'%' IDENTIFIED BY p_password;
-- Grant privileges
GRANT SELECT,
    INSERT,
    UPDATE ON main_db.beans TO p_username @'%';
-- Apply changes
FLUSH PRIVILEGES;
-- Insert user into the beans table
INSERT INTO beans (username, org_id, origin, skill_level)
VALUES (p_username, p_org_id, p_origin, p_skill_level);
END $$ DELIMITER;