-- Methods of defining primary key

-- Method 1
CREATE TABLE temp1 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(50)
);

-- Method 2
CREATE TABLE temp2 (
    id INT,
    name VARCHAR(100),
    age INT,
    city VARCHAR(50),
    PRIMARY KEY (id)
);

-- Primary key can be defined using combination of two or more columns
CREATE TABLE temp3 (
    id INT,
    name VARCHAR(100),
    age INT,
    city VARCHAR(50),
    PRIMARY KEY (id, name)
);

-- DEFAULT constraint - used to set default values if not provided by the user

CREATE TABLE teacher (
    id INT,
    salary INT DEFAULT 25000);

INSERT INTO teacher (id) VALUES (101);

SELECT * FROM teacher;

