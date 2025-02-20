DELIMITER // 

DROP PROCEDURE IF EXISTS CreateBeanRole // 

CREATE PROCEDURE CreateBeanRole() 
BEGIN -- Create the role if it doesn’t exist
CREATE ROLE IF NOT EXISTS 'bean_role';
-- Grant EXECUTE permission on specific stored procedures
GRANT SELECT ON Hitman_Association.beans TO 'bean_role';
-- Apply changes
FLUSH PRIVILEGES;
END // 
DELIMITER ;