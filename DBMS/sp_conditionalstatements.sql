
--------------IF-THEN statement
DELIMITER $$

CREATE PROCEDURE GetCustomerLevel(
    IN  pCustomerNumber INT, 
    OUT pCustomerLevel  VARCHAR(20))
BEGIN
    DECLARE credit DECIMAL(10,2) DEFAULT 0;

    SELECT creditLimit 
    INTO credit
    FROM customers
    WHERE customerNumber = pCustomerNumber;

    IF credit > 50000 THEN
        SET pCustomerLevel = 'PLATINUM';
    END IF;
END$$

DELIMITER ;
---------------------------------
SELECT 
    customerNumber, 
    creditLimit
FROM 
    customers
WHERE 
    creditLimit > 50000
ORDER BY 
    creditLimit DESC;
-----------------------------------
CALL GetCustomerLevel(141, @level);


---------------------IF-THEN-ELSE statement--------------------------------------------------------------------------
DROP PROCEDURE GetCustomerLevel;
SELECT @level;
------------------
DELIMITER $$

CREATE PROCEDURE GetCustomerLevel(
    IN  pCustomerNumber INT, 
    OUT pCustomerLevel  VARCHAR(20))
BEGIN
    DECLARE credit DECIMAL DEFAULT 0;

    SELECT creditLimit 
    INTO credit
    FROM customers
    WHERE customerNumber = pCustomerNumber;

    IF credit > 50000 THEN
        SET pCustomerLevel = 'PLATINUM';
    ELSE
        SET pCustomerLevel = 'NOT PLATINUM';
    END IF;
END$$

DELIMITER ;
--------------------------------
SELECT 
    customerNumber, 
    creditLimit
FROM 
    customers
WHERE 
    creditLimit <= 50000
ORDER BY 
    creditLimit DESC;
-------------------------
CALL GetCustomerLevel(447, @level);
SELECT @level;
-------------------------------IF-THEN-ELSEIF-ELSE statement--------------------------------------------------------------
DROP PROCEDURE GetCustomerLevel;
------------------------------------
DELIMITER $$

CREATE PROCEDURE GetCustomerLevel(
    IN  pCustomerNumber INT, 
    OUT pCustomerLevel  VARCHAR(20))
BEGIN
    DECLARE credit DECIMAL DEFAULT 0;

    SELECT creditLimit 
    INTO credit
    FROM customers
    WHERE customerNumber = pCustomerNumber;

    IF credit > 50000 THEN
        SET pCustomerLevel = 'PLATINUM';
    ELSEIF credit <= 50000 AND credit > 10000 THEN
        SET pCustomerLevel = 'GOLD';
    ELSE
        SET pCustomerLevel = 'SILVER';
    END IF;
END $$

DELIMITER ;
------------------------------
CALL GetCustomerLevel(447, @level); 

---------------------------------MySQL CASE Statement---------------------------------------------------------------------------------------------
DELIMITER $$ 

CREATE PROCEDURE GetCustomerShipping(
  IN pCustomerNumber INT, 
  OUT pShipping VARCHAR(50)
) 
BEGIN 
	DECLARE customerCountry VARCHAR(100);
	SELECT 
	  country INTO customerCountry 
	FROM 
	  customers 
	WHERE 
	  customerNumber = pCustomerNumber;

	CASE customerCountry 
		WHEN 'USA' THEN 
			SET pShipping = '2-day Shipping';
		WHEN 'Canada' THEN 
			SET pShipping = '3-day Shipping';
		ELSE 
			SET pShipping = '5-day Shipping';
	END CASE;
END$$ 

DELIMITER ;
SELECT @level;
------------------
CALL GetCustomerShipping(112,@shipping);
SELECT @shipping;
-----------------------------------------------------
----------------------------------Searched CASE statement example------------------------------------
DELIMITER $$ 

CREATE PROCEDURE GetDeliveryStatus(
  IN pOrderNumber INT, 
  OUT pDeliveryStatus VARCHAR(100)
) 

BEGIN 
	-- get the waiting day from the orders table
	DECLARE waitingDay INT DEFAULT 0;
	SELECT 
	  DATEDIFF(shippedDate, requiredDate) INTO waitingDay 
	FROM 
	  orders 
	WHERE 
	  orderNumber = pOrderNumber;
      
	-- determine delivery status	  
	CASE 
		WHEN waitingDay < 0 THEN 
			SET pDeliveryStatus = 'Early Delivery';
        WHEN waitingDay = 0 THEN 
			SET pDeliveryStatus = 'On Time';
		WHEN waitingDay >= 1 AND waitingDay < 5 THEN 
			SET pDeliveryStatus = 'Late';
		WHEN waitingDay >= 5 THEN 
			SET pDeliveryStatus = 'Very Late';
		ELSE 
			SET pDeliveryStatus = 'No Information';
	END CASE;

END$$ 

DELIMITER ;

---------------------------------------
CALL GetDeliveryStatus(10100,@delivery);



SELECT @delivery;