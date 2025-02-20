DROP PROCEDURE IF EXISTS ProcessWeaponPurchase;

DELIMITER $$

CREATE PROCEDURE ProcessWeaponPurchase(
    IN p_weapon_id INTEGER,
    IN p_hit_id INTEGER,
    IN p_quantity INTEGER
)
BEGIN
    DECLARE v_purchase_id INTEGER;
    DECLARE v_existing_quantity INTEGER;

    -- Step 1: Check if the hit already has a weapon purchase
    SELECT weapon_purchase_id INTO v_purchase_id
    FROM hits
    WHERE hit_id = p_hit_id;

    -- Step 2: If no existing purchase, create a new one
    IF v_purchase_id IS NULL THEN
        INSERT INTO weapon_purchase (total_cost, purchase_date)
        VALUES (0, CURDATE());
        SET v_purchase_id = LAST_INSERT_ID();

        -- Update the hit to associate it with this purchase
        UPDATE hits
        SET weapon_purchase_id = v_purchase_id
        WHERE hit_id = p_hit_id;
    END IF;

    -- Step 3: Check if the weapon is already in the purchase
    SELECT quantity INTO v_existing_quantity
    FROM weapon_purchase_items
    WHERE purchase_id = v_purchase_id AND weapon_id = p_weapon_id;

    -- Step 4: If weapon exists, update quantity; otherwise, insert a new row
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
