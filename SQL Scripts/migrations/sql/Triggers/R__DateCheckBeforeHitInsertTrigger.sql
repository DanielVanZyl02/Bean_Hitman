-- THIS TRIGGER ENSURES THAT THE DATES OF A HIT ARE VALID BEFORE IT IS INSERTED.
-- CAN ADD MORE HIT INSERT RELATED TRIGGER FUNCTIONS IN HERE.
DROP TRIGGER IF EXISTS before_hit_insert;

DELIMITER $$

CREATE TRIGGER before_hit_insert
BEFORE INSERT ON hits
FOR EACH ROW
BEGIN

    IF NEW.hit_start_date < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Hit start date cannot be in the past';
    END IF;

    IF NEW.hit_due_date <= NEW.hit_start_date THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Hit due date must be after the start date.';
    END IF;
    
END $$

DELIMITER ;