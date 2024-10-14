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
 