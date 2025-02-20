DELIMITER // 

DROP PROCEDURE IF EXISTS CreateMiddlemanRole // 

CREATE PROCEDURE CreateMiddlemanRole() 
BEGIN -- Create the role if it doesn’t exist
CREATE ROLE IF NOT EXISTS 'middleman_role';
-- Grant all privileges on specific tables
GRANT ALL PRIVILEGES ON Hitman_Association.organisations TO 'middleman_role';
GRANT ALL PRIVILEGES ON Hitman_Association.contracts TO 'middleman_role';
GRANT ALL PRIVILEGES ON Hitman_Association.clients TO 'middleman_role';
-- Apply changes
FLUSH PRIVILEGES;
END // 

DELIMITER ;