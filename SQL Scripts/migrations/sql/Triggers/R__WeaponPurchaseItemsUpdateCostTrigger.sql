-- This trigger upadtes the weapon purchase item cost whenever its updated (quantity or weapon)
DROP TRIGGER IF EXISTS weapon_purchase_item_update_cost;

DELIMITER $$

CREATE TRIGGER weapon_purchase_item_update_cost
BEFORE UPDATE ON weapon_purchase_items
FOR EACH ROW
BEGIN
    DECLARE weapon_price DECIMAL(10,2);
    
    SELECT cost INTO weapon_price FROM weapons WHERE weapon_id = NEW.weapon_id;
    
    SET NEW.cost = IFNULL(weapon_price, 0) * GREATEST(NEW.quantity, 0);
END $$

DELIMITER ;
