USE hitman_association;

DELIMITER $$
 -- THIS IS FOR UPDATING THE WEAPON_PURCHASE TOTAL COST IF WEAPON_PURCHASE_ITEM IS DELETED
CREATE TRIGGER after_weapon_purchase_items_delete
AFTER DELETE ON weapon_purchase_items
FOR EACH ROW
BEGIN
    
    UPDATE weapon_purchase
    SET total_cost = (
        SELECT IFNULL(SUM(cost), 0)
        FROM weapon_purchase_items
        WHERE purchase_id = OLD.purchase_id
    )
    WHERE purchase_id = OLD.purchase_id;
END $$

DELIMITER ;
