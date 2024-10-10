use classicmodels;

DELIMITER $$

CREATE PROCEDURE GetCustomers()
BEGIN
	SELECT 
		customerName, 
		city, GetCustomersGetCustomers
		state, 
		postalCode, 
		country
	FROM
		customers
	ORDER BY customerName;    
END$$
DELIMITER ;


--------------------

DELIMITER //

SELECT * FROM customers //

SELECT * FROM products //


--------------------

DELIMITER $$

CREATE PROCEDURE CreatePersonTable()
BEGIN
    -- drop persons table 
    DROP TABLE IF EXISTS persons;
    
    -- create persons table
    CREATE TABLE persons(
        id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(255) NOT NULL,
        last_name VARCHAR(255) NOT NULL
    );
    
    -- insert data into the persons table
    INSERT INTO persons(first_name, last_name)
    VALUES('John','Doe'),
		  ('Jane','Doe');
	
    -- retrieve data from the persons table
    SELECT id, first_name, last_name 
    FROM persons;
END $$

DELIMITER ;
------------------------------------
DELIMITER $$

CREATE PROCEDURE CreatePersonTable()
BEGIN
    -- drop persons table 
    DROP TABLE IF EXISTS persons;
    
    -- create persons table
    CREATE TABLE persons(
        id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(255) NOT NULL,
        last_name VARCHAR(255) NOT NULL
    );
    
    -- insert data into the persons table
    INSERT INTO persons(first_name, last_name)
    VALUES('John','Doe'),
		  ('Jane','Doe');
	
    -- retrieve data from the persons table
    SELECT id, first_name, last_name 
    FROM persons;
END $$

DELIMITER ;
-----------------------------------------
DELIMITER $$

CREATE PROCEDURE GetTotalOrder()
BEGIN
	DECLARE totalOrder INT DEFAULT 0;
    
	SELECT 
		COUNT(*)
	INTO totalOrder FROM
		orders;
    
	SELECT totalOrder;
END$$

DELIMITER ;


----------------------------------------
DELIMITER $$

CREATE PROCEDURE SetCounter(
	INOUT counter INT,
    IN inc INT
)
BEGIN
	SET counter = counter + inc;
END$$

DELIMITER ;



---------------------------------

DELIMITER //

CREATE PROCEDURE GetOfficeByCountry(
	IN countryName VARCHAR(255)
)
BEGIN
	SELECT * 
 	FROM offices
	WHERE country = countryName;
END //

DELIMITER ;

CALL GetOfficeByCountry();

CALL GetOfficeByCountry('USA');
---------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE GetOrderCountByStatus (
	IN  orderStatus VARCHAR(25),
	OUT total INT
)
BEGIN
	SELECT COUNT(orderNumber)
	INTO total
	FROM orders
	WHERE status = orderStatus;
END$$

DELIMITER ;

CALL GetOrderCountByStatus('Shipped',@total);
SELECT @total;
---------------------------------------------------------------------------------------------------




