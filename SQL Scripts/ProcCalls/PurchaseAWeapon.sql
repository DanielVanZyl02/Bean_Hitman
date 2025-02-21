-- This call will create a purchase for a hit with ID 21, purchasing 3 quantity of wepaon_id 1.

CALL ProcessWeaponPurchase(
	2, -- 1 | BAD WEAPON 99
    4, -- 4 | BAD HIT 15
    1 -- 3 |
);

SELECT * from weapon_purchase;