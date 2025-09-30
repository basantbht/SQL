-- ALTER: To change the schema

-- formats

-- ADD Column
ALTER TABLE table_name
ADD COLUMN column_name datatype constraint;

-- DROP Column
ALTER TABLE table_name
DROP COLUMN column_name;

-- RENAME Table
ALTER TABLE table_name
RENAME TO new_table_name;

-- CHANGE Column(rename)
ALTER TABLE table_name
CHANGE COLUMN old_name new_name new_datatype new_constraint;

-- MODIFY Column(modify datatype/ constraint)
ALTER TABLE table_name
MODIFY col_name new_datatype new_constraint;


-- Examples

-- ADD Column

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student
CHANGE age stu_age INT;

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE student
RENAME TO stu;

-- TRUNCATE: To delete table's data

-- format
TRUNCATE TABLE table_name; 


-- Practice Question
-- In the student table:

-- 1. Change the name of column "name" to "full_name"
ALTER TABLE student
CHANGE COLUMN name full_name VARCHAR(50);

-- 2. Delete all the students who scored marks less than 80.
DELETE FROM student
WHERE marks < 80;

-- 3. Delete the column for grades.
ALTER TABLE student
DROP COLUMN grade;