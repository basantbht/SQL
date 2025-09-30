-- SQL Sub Queries: A subquery or inner query or a nested query within another SQL query. It involves 2 select statements.

-- Syntax
SELECT column(s)
FROM table_name
WHERE col_name operator
(subquery);


-- Example 1
-- Get names of all students who scored more than class average
-- Step 1: Find the avg of class
-- Step 2: Find the names of students with marks > avg

CREATE DATABASE college;

USE college;

CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"basant",78, "C","Kanchanpur"),
(102,"namraj",93, "A","Pokhara"),
(103,"rahul",85, "B","Pokhara"),
(104,"ritesh",96, "A","Chitwan"),
(105,"sagar",92, "F","Chitwan"),
(106,"Lok",82, "B","Chitwan");

SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);


-- Example 2
-- Find the names of all students with even roll numbers.
-- Solution:
-- Step 1: Find the even roll numbers
-- Step 2: Find the names of students with even roll no.

SELECT name,rollno
FROM student
WHERE rollno IN (
	SELECT rollno
	FROM student
	WHERE rollno % 2 = 0
);


-- Example with FROM
-- Find the max marks from the students of Chitwan
-- Solution:
-- Step 1: Find the students of Chitwan
-- Step 2: Find their max marks using the sublist in step 1

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Chitwan") AS temp;


-- Example with SELECT

SELECT (SELECT MAX(marks) FROM student),name
FROM student;


-- MySQL Views: A view is a virtual table based on the result set of an SQL statement.

CREATE VIEW view1 AS
SELECT rollno, name, marks FROM student;

SELECT * FROM view1;

SELECT * 
FROM view1
WHERE marks > 90;