-- Write a query to find the names of employees whose salaries are greater than the average salary of all employees.


-- Solution: 

-- SELECT name 
-- FROM employees 
-- WHERE salary > (SELECT AVG(salary) FROM employees);