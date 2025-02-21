DROP PROCEDURE IF EXISTS ProcessWeaponPurchase;

DELIMITER $$

CREATE PROCEDURE ProcessWeaponPurchase(
    IN p_weapon_id INTEGER,
    IN p_hit_id INTEGER,
    IN p_quantity INTEGER
) SQL SECURITY DEFINER
BEGIN
    DECLARE v_purchase_id INTEGER;
    DECLARE v_existing_quantity INTEGER;
    DECLARE v_weapon_count INTEGER;
    DECLARE v_hit_id INTEGER;
    DECLARE v_hit_status VARCHAR(50);
    
    SELECT count(*) INTO v_hit_id from hits where hit_id = p_hit_id;
    SELECT status INTO v_hit_status from hits where hit_id = p_hit_id;
    
    IF v_hit_id = 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This hit does not exist.';
	END IF;
    
    IF v_hit_status IN ("Completed","Cancelled","Failed") THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You cannot purchase a weapon for a hit that is completed, cancelled, or failed.';
	END IF;


    SELECT weapon_purchase_id INTO v_purchase_id
    FROM hits
    WHERE hit_id = p_hit_id;


    IF v_purchase_id IS NULL THEN
        INSERT INTO weapon_purchase (total_cost, purchase_date)
        VALUES (0, CURDATE());
        SET v_purchase_id = LAST_INSERT_ID();


        UPDATE hits
        SET weapon_purchase_id = v_purchase_id
        WHERE hit_id = p_hit_id;
    END IF;

	SELECT count(*) INTO v_weapon_count FROM weapons WHERE weapon_id = p_weapon_id;
    
    IF v_weapon_count = 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This weapon does not exist';
	END IF;


    SELECT quantity INTO v_existing_quantity
    FROM weapon_purchase_items
    WHERE purchase_id = v_purchase_id AND weapon_id = p_weapon_id;


    IF v_existing_quantity IS NOT NULL THEN
        UPDATE weapon_purchase_items
        SET quantity = v_existing_quantity + p_quantity
        WHERE purchase_id = v_purchase_id AND weapon_id = p_weapon_id;
    ELSE
        INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost)
        VALUES (v_purchase_id, p_weapon_id, p_quantity, 0); -- Cost is handled by the trigger
    END IF;

    -- Final Output
    SELECT 'Weapon purchase processed successfully' AS Message, v_purchase_id AS Purchase_ID;

END $$

DELIMITER ;
