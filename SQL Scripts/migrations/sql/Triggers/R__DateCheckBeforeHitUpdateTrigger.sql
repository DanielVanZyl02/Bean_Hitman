DROP TRIGGER IF EXISTS before_hit_update;

DELIMITER $$

CREATE TRIGGER before_hit_update
BEFORE UPDATE ON hits
FOR EACH ROW
BEGIN
	IF NEW.hit_start_date != OLD.hit_start_date THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "You cannot change the start date of a hit.";
	END IF;
    
    IF NEW.hit_due_date < OLD.hit_start_date THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "The hit due date may not be before the initial start date.";
	END IF;
END $$

DELIMITER ;