# SQL Cheat Sheet Repository

Welcome to the **SQL Cheat Sheet** repository! This repository contains code examples for various SQL sublanguages and functions, including DML (Data Manipulation Language), DDL (Data Definition Language), DCL (Data Control Language), TCL (Transaction Control Language), and Aggregate Functions.

## Introduction

This repository serves as a handy reference guide for SQL developers and learners, offering a breakdown of all key SQL sublanguages and functions with practical examples. The code snippets are organized into respective folders for easier access and learning.

### DML (Data Manipulation Language)
DML commands are used to modify data within a database. Common commands include:
- `SELECT`: Retrieves data from the database.
- `INSERT`: Adds new records to a table.
- `UPDATE`: Modifies existing data.
- `DELETE`: Removes records from a table.

Example:
```sql
-- Insert a new record
INSERT INTO employees (name, role, salary)
VALUES ('John Doe', 'Developer', 60000);

-- Update a record
UPDATE employees
SET salary = 65000
WHERE name = 'John Doe';

-- Delete a record
DELETE FROM employees 
WHERE name = 'John Doe';
```
### DDL(Data Defination Language)
DDL commands are used to define or alter the structure of database objects like tables, indexes, and schemas. Common commands include: 
- `CREATE`: Creates new database objects like tables, views, and indexes.
- `ALTER`: Modifies the structure of an existing database object.
- `DROP`: Deletes database objects like tables or indexes.
- `TRUNCATE`: Removes all records from a table but preserves its structure.

Example:
```sql
-- Create a new table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    role VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Alter table to add a new column
ALTER TABLE employees ADD email VARCHAR(100);

-- Drop the employees table
DROP TABLE employees;

-- Truncate the employees table (remove all records)
TRUNCATE TABLE employees;
```

### DCL(Data Control Langauge)
DCL commands manage user permissions and access controls. Common commands include:
- `GRANT`: Provides privileges to users..
- `REVOKE`: Removes privileges from users..

Example:
```sql
-- Grant SELECT privilege to a user on the employees table
GRANT SELECT ON employees TO 'username';

-- Revoke SELECT privilege from a user
REVOKE SELECT ON employees FROM 'username';
```

### TCL(Transaction Control Language)
TCL commands handle transactions within a database. These commands help manage how and when changes are committed or undone. Common commands include:
- `COMMIT`: Saves the current transaction permanently...
- `ROLLEBACK`: Undoes the current transaction...
- `SAVEPOINT`: Sets a savepoint within a transaction to which you can roll back later...

Example:
```sql
-- Start a transaction
BEGIN TRANSACTION;

-- Insert a new record
INSERT INTO employees (name, role, salary)
VALUES ('Jane Doe', 'Manager', 80000);

-- Commit the transaction
COMMIT;

-- Start another transaction
BEGIN TRANSACTION;

-- Update a record
UPDATE employees
SET salary = 90000
WHERE name = 'Jane Doe';

-- Rollback the transaction (undo the changes)
ROLLBACK;

```
### Aggregate Functions
Aggregate functions perform calculations on a set of values and return a single result. These are often used with the `GROUP BY` clause:
- `COUNT`: Returns the count of rows.
- `SUM`: Returns the sum of a numeric column.
- `AVG`: Returns the average of a numeric column.
- `MAX`: Returns the maximum value of a column.
- `MIN`: Returns the minimum value of a column.

Example:
```sql
-- Count the number of employees
SELECT COUNT(*) FROM employees;

-- Sum of all salaries
SELECT SUM(salary) FROM employees;

-- Average salary
SELECT AVG(salary) FROM employees;

-- Highest salary
SELECT MAX(salary) FROM employees;

-- Lowest salary
SELECT MIN(salary) FROM employees;
```

# How to Prepare SQL For Interviews. 

## 1. Video Tutorial: 
- **Apna College**: https://youtu.be/hlGoQC332VM?si=GXk3HpY4iNHPcTMk

## 2. Practice:
- These are some famous github repos:
- **Repo1**: https://github.com/kansiris/SQL-interview-questions
- **Repo2**: https://github.com/mdh266/SQL-Practice
- **Repo3**: https://github.com/krishnasagrawal/SQL-and-DBMS-Study-Resources/blob/main/SQL%20Interview%20Questions.pdf

## 3. Revision: 
- **Link1**: https://drive.google.com/drive/folders/1OeHQaGTxgvBakJIbQ1QC9grO7WqDkPDg
- **Link2**: https://www.youtube.com/watch?v=gKSs5yIvTgs&ab_channel=NishthaNagar
- **Link3**: https://www.youtube.com/watch?v=WF_-8S4mSpU&ab_channel=LotusITHubtraininginstitute
- **Link4**: https://drive.google.com/file/d/1y3KKghRhQjKfbWhvLipMOCCemKd_XdTm/view
  



