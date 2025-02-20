USE hitman_association;

DELIMITER $$

CREATE TRIGGER before_update_trim_client_alias_trigger
BEFORE UPDATE ON clients
FOR EACH ROW
BEGIN
	SET NEW.alias = TRIM(NEW.alias);
END $$

DELIMITER ;

    
    