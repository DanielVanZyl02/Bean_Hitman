USE hitman_association;
DELIMITER $$

DROP PROCEDURE IF EXISTS PaymentRecieved $$
CREATE DEFINER='root'@'%' PROCEDURE PaymentRecieved(hit_id INT, new_status VARCHAR(50)) SQL SECURITY DEFINER
BEGIN
    DECLARE payment_id INT;
    
    SELECT h.payment_id INTO payment_id 
    FROM hits h 
    WHERE h.hit_id = hit_id 
    LIMIT 1;

    IF payment_id IS NULL THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'No matching hit_id found';
    ELSE
        UPDATE payments p
        SET p.status = new_status 
        WHERE p.payment_id = payment_id;

        IF ROW_COUNT() = 0 THEN
            SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Payment not updated, check hits with outstanding payments';
        END IF;
    END IF;
END $$

DELIMITER ;