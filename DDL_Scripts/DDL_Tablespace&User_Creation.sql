/*SQL Statements for creation and arrangment of DB Schema*/

-- create user
--CREATE USER hotel_admin IDENTIFIED BY "hoteladmin";

 -- grant user rights
--GRANT CONNECT, RESOURCE, CREATE VIEW, CREATE SYNONYM, CREATE TRIGGER 
--	TO hotel_admin;

-- see if user is there
--SELECT * FROM dba_users WHERE username='HOTEL_ADMIN';

-- create tablespace for hotel administrator
CREATE TABLESPACE hotel 
	datafile '/usr/lib/oracle/xe/oradata/XE/s21bwi4_wi19b080.dbf' 
	size 10 M 
	autoextend on;
	
--ALTER USER hotel_admin DEFAULT TABLESPACE hotel;

-- check for newly created tabelspace
SELECT * FROM USER_TABLESPACES;


