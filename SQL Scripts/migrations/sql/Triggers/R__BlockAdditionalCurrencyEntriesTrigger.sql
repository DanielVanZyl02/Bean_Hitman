DROP TRIGGER IF EXISTS block_additional_inserts_on_currency_values;

DELIMITER $$

CREATE TRIGGER block_additional_inserts_on_currency_values
BEFORE INSERT ON currency_values 
FOR EACH ROW
BEGIN
	DECLARE v_count int;
	
	SELECT count(*) INTO v_count from currency_values;
    
    IF v_count >= 1 THEN
    SIGNAL SQLSTATE VALUE '99999'
      SET MESSAGE_TEXT = 'You cannot insert additional rows to this table.';
	END IF;
END $$

DELIMITER ;