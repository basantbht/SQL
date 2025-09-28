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