-- Joins in SQL: Join is used to combine rows from two or more tables, based on a related column between them.

-- Types of Joins
-- Inner Join
-- Left Join
-- Right Join
-- Full Join

-- 1. Inner Join: Returns records that matching values in both tables

-- Syntax:
SELECT column(s)
FROM tableA
INNER JOIN tableB
ON tableA.col_name = tableB.col_name;

-- Example
SELECT *
FROM student
INNER JOIN course
ON student.id = course.id;

-- alias - alternate name
SELECT *
FROM student as s
INNER JOIN course as c
ON s.id = c.id;


-- 2.Left Join: Returns all records from the left table, and the matched records from the right table

-- Syntax
SELECT column(s)
FROM tableA
LEFT JOIN tableB
ON tableA.col_name = tableB.col_name;

-- Example
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id;


-- 3.Right Join: Returns all records from the right table, and the matched records from the left table

-- Syntax
SELECT column(s)
FROM tableA
RIGHT JOIN tableB
ON tableA.col_name = tableB.col_name;

-- Example
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;


-- 4. Full Join/ Full outer join: Returns all records when there is a match in either left or right table 

-- Syntax
LEFT JOIN 
UNION
RIGHT JOIN

-- Example
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;


-- More joins

-- Left Exclusive Join
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL;


-- Right Exclusive Join
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL;

-- Full Exclusive Join
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL;


-- Self Join: It is a regular join but the table is joined with itself

-- Syntax
SELECT column(s)
FROM table as a
JOIN table as b
ON a.col_name = b.col_name;

-- Exampl
CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee (id,name,manager_id)
VALUES
(101, "basant",103),
(102, "hari",104),
(103, "namraj",NULL),
(104, "rahul",103);

SELECT *
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT a.name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;


-- UNION: It is used to combine the result set of two or more SELECT statements.
-- It gives unique values.
-- To use it:
-- - Every SELECT should have same no. of columns
-- - Columns must have similar data types
-- - Columns in every SELECT should be in same order

-- Syntax:
SELECT column(s) FROM tableA
UNION
SELECT column(s) FROM tableB

SELECT name FROM employee
UNION
SELECT name FROM employee;

-- UNION ALL: Gives duplicates values too.
SELECT name FROM employee
UNION
SELECT name FROM employee;