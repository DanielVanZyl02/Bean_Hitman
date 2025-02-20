DROP TRIGGER IF EXISTS before_insert_trim_bean_alias_trigger;

DELIMITER $$

CREATE TRIGGER before_insert_trim_bean_alias_trigger
BEFORE insert ON beans
FOR EACH ROW
BEGIN
	SET NEW.alias = TRIM(NEW.alias);
END $$

DELIMITER ;

    
    