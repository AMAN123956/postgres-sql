-- 1. Create Database
CREATE DATABASE database_name;

-- 2.a.Connect To a Database
\c database_name;

-- 2.b.Drop Database
DROP DATABASE db_name;

-- 3.CREATE TABLE
CREATE TABLE person (
id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(7),
date_of_birth DATE);

-- 3.b DROP TABLE
DROP TABLE table_name;

-- 4.Display All the Table in Database
\d

-- 5.Display Details of Particular Table in Database
\d table_name;

-- 6.Drop Table
DROP TABLE table_name;

-- 7.Insert Entries in a Table
INSERT INTO person (
first_name,
last_name,
gender,
date_of_birth)
VALUES ('Aman','Dixit','MALE', DATE '2002-10-02');

-- 8.Select Details from a Table
SELECT * FROM person;

-- 9.Display Particular Details on the basis of a field
SELECT * FROM person WHERE id='1';

-- 10.Display Unique Elements(gender column_name)
SELECT DISTINCT gender FROM person;

-- 11.SORTING/ORDERING 
-- By Default Ascending Order
SELECT * FROM person ORDER BY price;
-- For Descending Order
SELECT * FROM person ORDER BY price DESC;

-- 12.To Display Particular Number of Entries(in case of pagination and all)
SELECT * FROM person LIMIT 10;

-- 13. Exporting Query Results to a CSV
\copy (SELECT * FROM PERSON) TO '/Users/aaman/Downloads/t123.csv' DELIMITER ',' CSV HEADER;



