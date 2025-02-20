DELIMITER // 

DROP PROCEDURE IF EXISTS CreateOrgRole // 

CREATE PROCEDURE CreateOrgRole() 
BEGIN -- Create the role if it doesn’t exist
CREATE ROLE IF NOT EXISTS 'org_role';
-- Grant permissions to insert into the `hits` table
GRANT INSERT ON Hitman_Association.hits TO 'org_role';
-- Grant EXECUTE permission on specific stored procedures
GRANT EXECUTE ON PROCEDURE Hitman_Association.SomeProcedure TO 'org_role';
GRANT EXECUTE ON PROCEDURE Hitman_Association.AnotherProcedure TO 'org_role';
-- Apply changes
FLUSH PRIVILEGES;
END // 

DELIMITER;