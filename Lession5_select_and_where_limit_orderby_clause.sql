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


-- SELECT: used to select any data from table
SELECT * FROM student; -- "*" selects all columns data 

SELECT name,marks FROM student;

SELECT city FROM student;

SELECT DISTINCT city FROM student;



-- WHERE clause: defines some condition
SELECT * 
FROM student 
WHERE marks > 80;

SELECT * 
FROM student 
WHERE city = "Kathmandu";


-- Arithmetic operators: +, -, *, /, %
-- Comparison operators: = , !=, > , >=, <, <=
-- Logical operators: AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY
-- Bitwise operators: &(Bitwise AND), |(Bitwise OR)

SELECT * 
FROM student 
WHERE marks > 90 AND city = "Kathmandu";

SELECT * 
FROM student 
WHERE marks+10 > 100; 

SELECT * 
FROM student 
WHERE marks > 90 OR city = "Kathmandu";

SELECT * 
FROM student 
WHERE marks BETWEEN 80 AND 90;

SELECT * 
FROM student 
WHERE city IN ("Kathmandu", "Chitwan", "Pokhara");

SELECT * 
FROM student 
WHERE city NOT IN ("Kathmandu", "Chitwan");

-- LIMIT Clause: Sets an upper limit on number of (tuples)rows to be returned
SELECT * FROM student LIMIT 3;

SELECT *
FROM student
WHERE marks > 75
LIMIT 3;

-- ORDER BY Clause: To srot in ascending(ASC) or descending order(DESC)
SELECT *
FROM student
ORDER BY city ASC;

SELECT *
FROM student
ORDER BY marks ASC;

SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;