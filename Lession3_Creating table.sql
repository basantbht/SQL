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

-- Select and view all columns data
SELECT * FROM table_name;

-- Example:
SELECT * FROM student;

