
-- Aggregate functions: They perform a calculation on a set of values, and return a single value

-- COUNT()
-- MAX()
-- MIN()
-- SUM()
-- AVG()

CREATE DATABASE college;

USE college;

CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"basant",78, "C","Kanchanpur"),
(102,"namraj",93, "A","Kathmandu"),
(103,"rahul",85, "B","Kathmandu"),
(104,"ritesh",96, "A","Chitwan"),
(105,"sagar",12, "F","Chitwan"),
(106,"Lok",82, "B","Chitwan");

-- Aggregate functions
SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT COUNT(rollno)
FROM student;

-- GROUP BY Clause: Groups rows that have the same values into summary rows.

SELECT city
FROM student
GROUP BY city;

SELECT city,COUNT(rollno)
FROM student
GROUP BY city;

SELECT city, avg(marks)
FROM student
GROUP BY city;

-- Practice Examples


-- Q1-Write the query to find avg marks in each city in ascending order.

SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY city;

SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks);

-- group by grades
SELECT grade , COUNT(rollno)
FROM student
GROUP BY grade
ORDER BY grade;



-- Q2-For the given table, find the total payment according to each payment method.

CREATE TABLE payment(
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO payment
(customer_id,customer,mode,city)
VALUES
(101, "basant" ,"Netbanking", "Portland"),
(102, "namraj" ,"Credit Card", "Miami"),
(103 ,"rahul" ,"Credit Card", "Seattle"),
(104, "ritesh" ,"Netbanking", "Denver"),
(105 ,"sagar" ,"Credit Card", "New Orleans"),
(106,"Lok" ,"Debit Card", "Minneapolis"),
(107,"Lok" ,"Debit Card", "Phoenix"),
(108,"hari" ,"Netbanking", "Boston"),
(109,"shyam" ,"Netbanking", "Nashville"),
(110,"krishna" ,"Credit Card", "Boston");

SELECT mode, COUNT(customer)
FROM payment
GROUP BY mode;