USE hitman_association;

DELIMITER $$

CREATE TRIGGER before_insert_trim_client_alias_trigger
BEFORE insert ON clients
FOR EACH ROW
BEGIN
	SET NEW.alias = TRIM(NEW.alias);
END $$

DELIMITER ;