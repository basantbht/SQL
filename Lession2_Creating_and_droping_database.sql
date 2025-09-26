-- Creating database
CREATE DATABASE db_name;

-- Throws warning if found instead of error
CREATE DATABASE IF NOT EXISTS db_name;


-- Deleting database
DROP DATABASE db_name;

-- Throws warning if not found instead of error
DROP DATABASE IF EXISTS db_name;


-- Selecting any specific database for futher operations
USE db_name;


-- Shows all databases
SHOW DATABASES;

-- Show all tables in a database
SHOW TABLES;