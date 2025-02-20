USE hitman_association;
-- This trigger calculates the cost of a weapon_purchase_item based on weapon price and quantity.
DELIMITER $$

CREATE TRIGGER insert_weapons_purchase_items
BEFORE INSERT ON weapon_purchase_items
FOR EACH ROW
BEGIN
    DECLARE weapon_price DECIMAL(10,2);
    
    SELECT cost INTO weapon_price from weapons WHERE weapon_id = NEW.weapon_id;
    
    SET NEW.cost = weapon_price*NEW.quantity;
END $$

DELIMITER ;
    
    