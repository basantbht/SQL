-- Defining foreign key

CREATE DATABASE college;

USE college;

CREATE TABLE dept(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);

-- Cascading of foreign key: Changes on parent table reflects automatically on child tables
CREATE DATABASE college;

USE college;

CREATE TABLE dept(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, "english"),
(102, "IT");

CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE 
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "basant",101),
(102, "namraj",102);

UPDATE dept
SET id=111
WHERE id = 101;

SELECT * FROM dept;

SELECT * FROM teacher;

