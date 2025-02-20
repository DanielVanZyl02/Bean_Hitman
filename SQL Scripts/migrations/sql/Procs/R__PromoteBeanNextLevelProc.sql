DROP PROCEDURE IF EXISTS PromoteBeanNextLevelProc;

DELIMITER $$

CREATE PROCEDURE PromoteBeanNextLevelProc(
    IN p_bean_id INT
)
BEGIN
    DECLARE v_current_skill_level ENUM(
    'Street Level',
    'Semi-pro',
    'Professional',
    'Seasoned Professional',
    'Master'
);
    DECLARE v_new_skill_level ENUM(
    'Street Level',
    'Semi-pro',
    'Professional',
    'Seasoned Professional',
    'Master'
);

    -- Get the current rank of the bean
    SELECT skill_level INTO v_current_skill_level FROM beans WHERE bean_id = p_bean_id;

    -- Determine the next rank
    SET v_new_skill_level = 
        CASE v_current_skill_level
            WHEN 'Street Level' THEN 'Semi-pro'
            WHEN 'Semi-pro' THEN 'Professional'
            WHEN 'Professional' THEN 'Seasoned Professional'
            WHEN 'Seasons Professional' THEN 'Master'
            ELSE NULL
        END;

    IF v_new_skill_level IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Bean is already at the highest skill level.';
    ELSE
        UPDATE beans SET skill_level = v_new_skill_level WHERE bean_id = p_bean_id;
        
        SELECT CONCAT('Bean ID ', p_bean_id, ' promoted to ', v_new_skill_level) AS Message;
    END IF;
END $$

DELIMITER ;