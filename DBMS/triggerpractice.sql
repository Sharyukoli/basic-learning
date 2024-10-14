create database samplebanking;
use samplebanking;
CREATE TABLE customers (
    custid INT AUTO_INCREMENT PRIMARY KEY,   
    fullname VARCHAR(255) ,          
    registrationdate DATETIME NOT NULL,     
);
-------drop table customers;

CREATE TABLE accounts (
    acctid INT AUTO_INCREMENT PRIMARY KEY,   
    custid INT,                             
    accounttype ENUM('current', 'saving') NOT NULL, 
    createdon DATETIME NOT NULL,             
    balance DECIMAL(10, 2) ,   
    CONSTRAINT fk_customer FOREIGN KEY (custid) REFERENCES customers(custid) 
);

CREATE TABLE operations (
    operationid INT AUTO_INCREMENT PRIMARY KEY, 
    accountid INT,                              
    amount DECIMAL(10, 2),            
    operationdate DATETIME NOT NULL,            
    operationtype ENUM('D', 'W') NOT NULL, 
    CONSTRAINT fk_account FOREIGN KEY (accountid) REFERENCES accounts(acctid) 
);

CREATE TABLE log (
    logid INT AUTO_INCREMENT PRIMARY KEY,         
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP, 
    operationid INT,                              
    status ENUM('completed') DEFAULT 'completed'  
);
DELIMITER $$

CREATE TRIGGER after_customer_insert
AFTER INSERT ON customers
FOR EACH ROW
BEGIN
    -- Insert a log record for the new customer registration
    INSERT INTO log (operationid, status)
    VALUES (NEW.custid, 'completed');
END $$

DELIMITER ;

INSERT INTO customers (fullname, registrationdate)
VALUES ('pavan koli', '2024-10-11',);








INSERT INTO customers (fullname, registrationdate, balance)
VALUES 
('sharyu', '2024-10-11 ', 400.75),
('koli', '2024-10-11 ', 500.00),
('sakshi', '2024-10-11 ', 300.20);








