DELIMITER // 

DROP PROCEDURE IF EXISTS CreateBeanRole // 

CREATE PROCEDURE CreateBeanRole() 
BEGIN -- Create the role if it doesn’t exist
CREATE ROLE IF NOT EXISTS 'bean_role';
-- Grant EXECUTE permission on specific stored procedures
GRANT EXECUTE ON PROCEDURE Hitman_Association.SomeProcedure TO 'bean_role';
GRANT EXECUTE ON PROCEDURE Hitman_Association.AnotherProcedure TO 'bean_role';
-- Apply changes
FLUSH PRIVILEGES;
END // 
DELIMITER;