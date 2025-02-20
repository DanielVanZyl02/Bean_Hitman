DROP TRIGGER IF EXISTS prevent_multiple_active_hits_before_insert;

DELIMITER $$

CREATE TRIGGER prevent_multiple_active_hits_before_insert
BEFORE INSERT ON hits
FOR EACH ROW
BEGIN
    DECLARE active_hit_count INT;

    SELECT COUNT(*) INTO active_hit_count
    FROM hits
    WHERE bean_id = NEW.bean_id
    AND status = 'Active';

    IF active_hit_count > 0 AND NEW.status = 'Active' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This bean already has an active hit.';
    END IF;
END$$

DELIMITER ;

DROP TRIGGER IF EXISTS prevent_multiple_active_hits_before_update;
DELIMITER $$

CREATE TRIGGER prevent_multiple_active_hits_before_update
BEFORE UPDATE ON hits
FOR EACH ROW
BEGIN
    DECLARE active_hit_count INT;

    SELECT COUNT(*) INTO active_hit_count
    FROM hits
    WHERE bean_id = NEW.bean_id
    AND status = 'Active'
    AND hit_id != OLD.hit_id; 

    IF active_hit_count > 0 AND NEW.status = 'Active' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This bean already has an active hit.';
    END IF;
END$$

DELIMITER ;