DROP TRIGGER IF EXISTS update_weapon_purchase_total;

DELIMITER $$

CREATE TRIGGER update_weapon_purchase_total
AFTER UPDATE ON weapon_purchase_items
FOR EACH ROW
BEGIN
    UPDATE weapon_purchase
    SET total_cost = (
        SELECT COALESCE(SUM(cost), 0)
        FROM weapon_purchase_items
        WHERE purchase_id = NEW.purchase_id
    )
    WHERE purchase_id = NEW.purchase_id;
END $$

DELIMITER ;