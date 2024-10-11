-- Write a query to find the second highest salary from the employees table.

-- Solution:

-- SELECT MAX(salary) 
-- FROM employees 
-- WHERE salary < (SELECT MAX(salary) FROM employees);