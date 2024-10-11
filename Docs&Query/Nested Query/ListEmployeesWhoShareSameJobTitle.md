-- Write a query to find all employees who share the same job title as 'Manager'.


-- Solution: 

-- SELECT name 
-- FROM employees 
-- WHERE job_title = (SELECT job_title FROM employees WHERE name = 'Manager');