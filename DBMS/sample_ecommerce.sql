------------------------------------------------------------------------
create database sample_ecommerce;
--------------------------------------------------------------------------
use sample_ecommerce;
---------------------------------------------------------------------------
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT,
    order_date DATETIME,
    status ENUM('pending', 'completed', 'canceled')
);
----------------------------------------------------------------------

CREATE TABLE inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT
);
---------------------------------------------------------------------------
DELIMITER $$
CREATE TRIGGER after_order_insert
AFTER  INSERT ON  orders
FOR EACH ROW
BEGIN
	DECLARE available_stock INT;
    SELECT stock_quantity INTO available_stock
    FROM inventory
    WHERE product_id = NEW.product_id;
     IF available_stock IS NOT NULL AND available_stock >= NEW.quantity THEN
		UPDATE  inventory
		SET  stock_quantity=stock_quantity-NEW.quantity
		WHERE  product_id=NEW.product_id;
     ELSE
		SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT= 'Insufficient';
     END IF;
END $$
DELIMITER ;
 ----------------------------------------------------------------------------
 
-- Test trigger execution:
 
-- pre-requisite
INSERT INTO inventory (product_id,stock_quantity)
values(	(1,56),
		(2,78),
		(5,00));
-- Insert a new order
INSERT INTO orders (product_id, quantity, order_date, status)
Values (1, 3, NOW(), 'pending');
---------------------------------------------

DROP table orders;
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT,
    order_date DATETIME,
    status ENUM('pending', 'completed', 'canceled')
);
---------------------------------------------------------
CREATE TABLE PAYMENTS(
     payment_id INT AUTO_INCREMENT PRIMARY KEY,
     order_id INT,
     amount DECIMAL(10,2),
     payment_date DATETIME,
     status ENUM('pending','completed')
);
-----------------------------------------------------------
DELIMITER $$

CREATE TRIGGER after_payment_insert
AFTER INSERT ON PAYMENTS
FOR EACH ROW
BEGIN

    IF NEW.status = 'completed' THEN
        UPDATE orders
        SET status = 'completed'
        WHERE order_id = NEW.order_id;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = ' pending ';
    END IF;
END $$

DELIMITER ;
----------------------------------------------

DELIMITER $$

CREATE TRIGGER after_payment_insert
AFTER INSERT ON PAYMENTS
FOR EACH ROW
BEGIN
    DECLARE total_order_value DECIMAL(10,2);

    -- Fetch the total value of the order corresponding to the payment
    SELECT SUM(amount) INTO total_order_value
    FROM payments
    WHERE order_id = NEW.order_id;

    -- Check if the total payment amount matches or exceeds a threshold (e.g., $100)
    IF total_order_value >= 100 THEN
        -- Update the order status to 'completed'
        UPDATE orders
        SET status = 'completed'
        WHERE order_id = NEW.order_id;
    ELSE
        -- Keep the order as pending or raise a message
        UPDATE orders
        SET status = 'pending'
        WHERE order_id = NEW.order_id;
    END IF;
END $$

DELIMITER ;





 
 
 
 
 
 
 