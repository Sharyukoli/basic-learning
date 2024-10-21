DELIMITER $$
	CREATE PROCEDURE apply_discount()
	BEGIN
	--Declare a cursor for selecting orders with total_amount >100
	DECLARE order_cursor  CURSOR FOR
	SELECT order_id, total_amount
	FROM orders
	WHERE total_amount >100

	-- Delcare a continue handler to set done  to TRUE , when there are no more rows
	DECLARE CONTINUE HANDLER  FOR  FOUND  SET done=TRUE;
	
	-- Open the cursor
	OPEN order_cursor

	-- Loop through the rows of curosor

	read_loop:LOOP
		FETCH order_cursor  INTO  order_id , total_amount;
		IF done THEN
		 LEAVE  read_loop;
		END IF;

		-- Apply a 10 % discount
		UPDATE  orders
		SET  total_amount=total_amount * 0.90;
		WHERE order_id=order_id;
	END LOOP;
	CLOSE order_cursor;

	END //
	DELIMITER;