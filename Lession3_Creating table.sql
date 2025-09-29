-- Creating our first table
USE college;

-- format
CREATE TABLE table_name (
    column_name1 datatype constraint,
    column_name2 datatype constraint,
    column_name3 datatype constraint
);

-- Example:
-- Primary key is always not null
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Drop table
DROP TABLE student;

-- Inserting data in table

-- Format
INSERT INTO table_name
(colname1, colname2)
VALUES
(col1_v1, col2_v1),
(col2_v1, col2_v2);

-- Example
INSERT INTO student 
(rollno, name)
VALUES
(101,"basant"),
(102,"namraj"),
(103,"rahul");

-- Can be used when order is known
INSERT INTO student VALUES (104,"ram");
4
-- Select and view all columns data
SELECT * FROM table_name;

-- Example:
SELECT * FROM student;


-- Practice Questions

-- Q1. Create a database for your company named ABC.

CREATE DATABASE ABC;

-- Q2. Create a table inside the DB to store employee info(id,name and salary)

USE ABC;  

CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary FLOAT
);

-- Q3. Add the following information in the DB:
-- 1, "basant", 1000
-- 2, "namraj", 2500
-- 3, "rahul", 5000
-- 4, "sunil", 8000

INSERT INTO employee
(id,name,salary)
VALUES
(1, "basant", 1000),
(2, "namraj", 2500),
(3, "rahul", 5000);
(4, "sunil", 8000);

-- Q4. Select and view all your table data

SELECT * FROM employee;