DROP EVENT IF EXISTS update_expired_hits;

DELIMITER $$

CREATE EVENT update_expired_hits
ON SCHEDULE EVERY 1 DAY 
DO
BEGIN
    UPDATE hits 
    SET status = 'FAILED'
    WHERE hit_due_date < CURDATE() 
    AND status IN ('Active'); 
END $$

DELIMITER ;