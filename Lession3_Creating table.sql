-- Creating our first table
USE college;

-- format
CREATE TABLE table_name (
    column_name1 datatype constraint,
    column_name2 datatype constraint,
    column_name3 datatype constraint
);

-- Example:
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);


-- Inserting data in table
INSERT INTO student VALUES(1, "BASANT", 22);
INSERT INTO student VALUES(2, "NAMRAJ", 23);


-- Getting all table columns and rows
SELECT * FROM student;