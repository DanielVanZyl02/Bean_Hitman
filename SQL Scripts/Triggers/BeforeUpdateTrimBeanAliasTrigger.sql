USE hitman_association;

DELIMITER $$

CREATE TRIGGER before_update_trim_bean_alias_trigger
BEFORE UPDATE ON beans
FOR EACH ROW
BEGIN
	SET NEW.alias = TRIM(NEW.alias);
END $$

DELIMITER ;

    
    