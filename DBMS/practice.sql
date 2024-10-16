 SELECT lastName, firstName, jobTitle FROM employees;
 show databases;
create database abc;
use abc;
select *from abc;

 select * from employees;
 SELECT lastname FROM employees;
 SELECT employeeNumber,lastName,firstName,extension,email,officeCode,reportsTo,jobTitle FROM   employees;
 SELECT * FROM employees;
 SELECT 1 + 1;  
 SELECT NOW();
 SELECT CONCAT('John',' ','Doe');
 SELECT CONCAT('John',' ','Doe') AS name;
 SELECT CONCAT('Jane',' ','Doe') AS 'Full name';
 SELECT contactLastname, contactFirstname FROM customers ORDER BY contactFirstname;
 SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname DESC;
 SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname DESC, contactFirstname ASC;
 
 ----basics practice study--------------------
 use classicmodels;
 SELECT lastName FROM employees;
 SELECT lastName, firstName, jobTitle FROM employees;
 SELECT employeeNumber,lastName,firstName,extension,email,officeCode,reportsTo,jobTitle FROM   employees; 
 SELECT * FROM employees;
 SELECT 1 + 1;    
 SELECT NOW();
 SELECT CONCAT('John',' ','Doe');
 SELECT CONCAT('John',' ','Doe') AS name;
 select ('sharyu') as firstname,('koli') as lastname;
 SELECT CONCAT('Jane',' ','Doe') AS 'Full name';
 SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname;
 SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname DESC;
 SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname DESC, contactFirstname ASC;
 SELECT orderNumber, orderLineNumber, quantityOrdered * priceEach AS subtotal FROM orderdetails ORDER BY subtotal DESC;
 SELECT FIELD('A', 'A', 'B','C');
 SELECT FIELD('B', 'A','B','C');
 SELECT orderNumber, status FROM orders ORDER BY FIELD(status, 'In Process', 'On Hold', 'Cancelled', 'Resolved', 'Disputed', 'Shipped');
 SELECT firstName, lastName, reportsTo FROM employees ORDER BY reportsTo;
 SELECT lastname, firstname, jobtitle FROM employees WHERE jobtitle = 'President';
 SELECT lastname, firstname, jobtitle,officeCode FROM employees WHERE jobtitle = 'Sales Rep' AND officeCode = 1;
 SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE jobtitle = 'Sales Rep' OR officeCode = 1 ORDER BY officeCode , jobTitle;
 SELECT firstName, lastName, officeCode FROM employees WHERE officeCode BETWEEN 1 AND 3 ORDER BY officeCode;
 SELECT firstName, lastName FROM employees WHERE lastName LIKE '%son'ORDER BY firstName;
 SELECT firstName, lastName, officeCode FROM employees WHERE officeCode IN ( 2,3) ORDER BY officeCode;
 SELECT lastName, firstName, reportsTo FROM employees WHERE reportsTo IS NULL;
 SELECT lastname, firstname, jobtitle FROM employees WHERE jobtitle <> 'Sales Rep';
 SELECT lastname, firstname, officeCode FROM employees WHERE officecode > 5;
 SELECT lastname, firstname, officeCode FROM employees WHERE officecode <= 4;
 CREATE TABLE product(id INT PRIMARY KEY,name VARCHAR(255) NOT NULL);
 drop table product;
 
 
 
 
 

 