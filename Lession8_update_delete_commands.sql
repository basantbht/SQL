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
(102,"namraj",93, "A","Pokhara"),
(103,"rahul",85, "B","Pokhara"),
(104,"ritesh",96, "A","Chitwan"),
(105,"sagar",12, "F","Chitwan"),
(106,"Lok",82, "B","Chitwan");

-- UPDATE:To update existing rows

-- format
UPDATE table_name
SET col1 = val1, col2 = val2
WHERE condition;


-- Example
SET SQL_SAFE_UPDATES = 0; -- Turn off safe mode which prevents updating the table. It is on by default.

UPDATE student
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET marks = 82
WHERE rollno = 105;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student 
SET marks = marks + 1;


-- DELETE: To delete existing rows

-- format
DELETE FROM table_name
WHERE condition;

-- Example
DELETE FROM student
WHERE marks < 33; -- Deletes the entire row data of matching condition

DELETE FROM student -- Deletes the entire table