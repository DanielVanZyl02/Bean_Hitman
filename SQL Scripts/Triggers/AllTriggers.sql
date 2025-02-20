USE hitman_association;

DROP TRIGGER IF EXISTS before_insert_trim_bean_alias_trigger;
DROP TRIGGER IF EXISTS before_update_trim_bean_alias_trigger;
DROP TRIGGER IF EXISTS before_hit_insert;
DROP TRIGGER IF EXISTS before_hit_update;
DROP TRIGGER IF EXISTS weapon_cost_is_updated;
DROP TRIGGER IF EXISTS after_weapon_purchase_items_delete;
DROP TRIGGER IF EXISTS insert_weapons_purchase_items;
DROP TRIGGER IF EXISTS weapon_purchase_item_update_cost;
DROP TRIGGER IF EXISTS update_weapon_purchase_total;
DROP TRIGGER IF EXISTS block_additional_inserts_on_currency_values;

DELIMITER $$

CREATE TRIGGER before_insert_trim_bean_alias_trigger
BEFORE insert ON beans
FOR EACH ROW
BEGIN
	SET NEW.alias = TRIM(NEW.alias);
END $$

CREATE TRIGGER before_update_trim_bean_alias_trigger
BEFORE UPDATE ON beans
FOR EACH ROW
BEGIN
	SET NEW.alias = TRIM(NEW.alias);
END $$

CREATE TRIGGER before_hit_insert
BEFORE INSERT ON hits
FOR EACH ROW
BEGIN

    IF NEW.hit_start_date < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Hit start date cannot be in the past';
    END IF;

    IF NEW.hit_due_date <= NEW.hit_start_date THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Hit due date must be after the start date.';
    END IF;
    
END $$

CREATE TRIGGER before_hit_update
BEFORE UPDATE ON hits
FOR EACH ROW
BEGIN
	IF NEW.hit_start_date != OLD.hit_start_date THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "You cannot change the start date of a hit.";
	END IF;
    
    IF NEW.hit_due_date < OLD.hit_start_date THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "The hit due date may not be before the initial start date.";
	END IF;
END $$

CREATE TRIGGER weapon_cost_is_updated
AFTER UPDATE ON weapons
FOR EACH ROW 
BEGIN
	UPDATE weapon_purchase_items
    SET cost = NEW.cost * quantity
    WHERE weapon_id = NEW.weapon_id;
END $$

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

CREATE TRIGGER insert_weapons_purchase_items
BEFORE INSERT ON weapon_purchase_items
FOR EACH ROW
BEGIN
    DECLARE weapon_price DECIMAL(10,2);
    
    SELECT cost INTO weapon_price from weapons WHERE weapon_id = NEW.weapon_id;
    
    SET NEW.cost = weapon_price*NEW.quantity;
END $$

CREATE TRIGGER weapon_purchase_item_update_cost
BEFORE UPDATE ON weapon_purchase_items
FOR EACH ROW
BEGIN
    DECLARE weapon_price DECIMAL(10,2);
    
    SELECT cost INTO weapon_price FROM weapons WHERE weapon_id = NEW.weapon_id;
    
    SET NEW.cost = IFNULL(weapon_price, 0) * GREATEST(NEW.quantity, 0);
END $$

CREATE TRIGGER update_weapon_purchase_total
AFTER UPDATE ON weapon_purchase_items
FOR EACH ROW
BEGIN
    UPDATE weapon_purchase
    SET total_cost = (
        SELECT COALESCE(SUM(cost), 0)
        FROM weapon_purchase_items
        WHERE purchase_id = OLD.purchase_id
    )
    WHERE purchase_id = OLD.purchase_id;
END $$

CREATE TRIGGER block_additional_inserts_on_currency_values
BEFORE INSERT ON currency_values 
FOR EACH ROW
BEGIN
	DECLARE v_count int;
	
	SELECT count(*) INTO v_count from currency_values;
    
    IF v_count >= 1 THEN
    SIGNAL SQLSTATE VALUE '99999'
      SET MESSAGE_TEXT = 'You cannot insert additional rows to this table.';
	END IF;
END $$

DELIMITER ;

