DROP TRIGGER IF EXISTS weaponCostIsUpdated;

DELIMITER $$

CREATE TRIGGER weaponCostIsUpdated
AFTER UPDATE ON weapons
FOR EACH ROW 
BEGIN
	UPDATE weapon_purchase_items
    SET cost = NEW.cost * quantity
    WHERE weapon_id = NEW.weapon_id;
END $$

DELIMITER ;

