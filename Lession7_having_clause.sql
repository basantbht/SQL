-- HAVING Clause: Similar to where i.e. applies some conditions on rows. Used when we want to apply any condition after grouping

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

-- Count number of students in each city where max marks cross 90.
SELECT city, count(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

-- General Order

-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condition
-- ORDER BY column(s) ASC;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city DESC;