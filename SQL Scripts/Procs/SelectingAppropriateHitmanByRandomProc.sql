USE hitman_association;

DROP PROCEDURE IF EXISTS AssignHitman;
-- THIS IS A PROC TO RANDOMLY ASSIGN A HITMAN FROM AN ORGANISATION AFTER A HIT HAS BEEN CREATED SUCH THAT THE MOST APPROPRIATE HITMAN IS ASSIGNED TO THE HIT.$$
DELIMITER $$

CREATE procedure AssignHitman(
	IN p_hit_id INT,
    IN p_spec_name VARCHAR(100),
    IN p_skill_level VARCHAR(50)
)
BEGIN
	DECLARE v_bean_id INT;
    
    SELECT b.bean_id INTO v_bean_id 
    FROM beans b
    JOIN spec_bean sb ON b.bean_id = sb.bean_id
    JOIN specialisations s ON s.spec_id = sb.spec_id
    WHERE b.skill_level = p_skill_level
    AND s.spec_name LIKE CONCAT("%",p_spec_name,"%")
    AND b.org_id IN (SELECT o.org_id
					FROM hits h
					JOIN beans b ON h.bean_id = b.bean_id
					JOIN organisations o ON b.org_id = o.org_id
					WHERE h.hit_id = p_hit_id)
	ORDER BY rand()
    LIMIT 1;
    
    IF v_bean_id IS NOT NULL THEN
        UPDATE hits SET bean_id = v_bean_id WHERE hit_id = p_hit_id;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No available hitmen matching the criteria.';
    END IF;
END $$

DELIMITER ;

