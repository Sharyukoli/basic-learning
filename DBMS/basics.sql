DELIMITER //
CREATE TRIGGER update_last_updated
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
SET NEW.last_updated = current_timestamp();
END;
//
 
CREATE TRIGGER update_last_updated_on_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    SET NEW.last_updated = CURRENT_TIMESTAMP;
END;
//
DELIMITER ;

------------
 
-- Insert a new employee
INSERT INTO employees (name, department) VALUES ('Ravi Tambade', 'training');
 
-- Update existing record
 
UPDATE  employees  SET department='BOD" WHERE id=1;
 
SELECT * FROM employees;


