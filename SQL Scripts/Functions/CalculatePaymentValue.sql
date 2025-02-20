USE hitman_association;

DELIMITER $$
DROP FUNCTION IF EXISTS CalculatePaymentValue $$
CREATE FUNCTION CalculatePaymentValue(payment_id INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE soil_rate DECIMAL(10,2);
    DECLARE fertilizer_rate DECIMAL(10,2);
    DECLARE nitrates_rate DECIMAL(10,2);

    DECLARE raw_soil DECIMAL(10,2);
    DECLARE raw_fertilizer DECIMAL(10,2);
    DECLARE raw_nitrates DECIMAL(10,2);
    
	DECLARE payment_value DECIMAL(10,2);
    
    SELECT soil, fertilizer, nitrates 
    INTO soil_rate, fertilizer_rate, nitrates_rate 
    FROM currency_values 
    LIMIT 1;
	
    SELECT p.soil, p.fertilizer, p.nitrates 
    INTO raw_soil, raw_fertilizer, raw_nitrates 
    FROM payments p WHERE p.payment_id = payment_id;
    
    SET payment_value = (raw_soil * soil_rate) + (raw_fertilizer * fertilizer_rate) + (raw_nitrates * nitrates_rate);
    
    RETURN ROUND(payment_value, 2);
END $$

DELIMITER ;