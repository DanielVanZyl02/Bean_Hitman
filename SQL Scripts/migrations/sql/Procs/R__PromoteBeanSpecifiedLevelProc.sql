DROP PROCEDURE IF EXISTS PromoteBeanSpecifiedLevelProc;

DELIMITER $$

CREATE PROCEDURE PromoteBeanSpecifiedLevelProc
(
	IN p_bean_id int,
    IN p_new_skill_level ENUM(
    'Street Level',
    'Semi-pro',
    'Professional',
    'Seasoned Professional',
    'Master'
)
) 
BEGIN 	
    UPDATE beans SET skill_level = p_new_skill_level WHERE bean_id = p_bean_id;
END $$

DELIMITER ;
