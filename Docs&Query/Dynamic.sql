
1. Basic Dynamic SQL Execution

DECLARE @sql NVARCHAR(MAX);
SET @sql = 'SELECT * FROM Employees WHERE DepartmentID = @DeptID';
EXEC sp_executesql @sql, N'@DeptID INT', @DeptID = 5;

2. Inserting Data Dynamically

DECLARE @tableName NVARCHAR(128) = 'Employees';
DECLARE @name NVARCHAR(100) = 'John Doe';
DECLARE @sql NVARCHAR(MAX);
SET @sql = 'INSERT INTO ' + @tableName + ' (Name) VALUES (@Name)';
EXEC sp_executesql @sql, N'@Name NVARCHAR(100)', @Name = @name;

3. Dynamic Table Name in a SELECT Query

DECLARE @tableName NVARCHAR(128) = 'Departments';
DECLARE @sql NVARCHAR(MAX);
SET @sql = 'SELECT * FROM ' + @tableName;
EXEC sp_executesql @sql;

4. Conditional Dynamic SQL

DECLARE @sql NVARCHAR(MAX);
DECLARE @columnName NVARCHAR(128) = 'Salary';
DECLARE @condition NVARCHAR(50) = 'High';

IF @condition = 'High'
    SET @sql = 'SELECT * FROM Employees WHERE ' + @columnName + ' > 70000';
ELSE
    SET @sql = 'SELECT * FROM Employees WHERE ' + @columnName + ' <= 70000';

EXEC sp_executesql @sql;

5. Updating Data with Dynamic SQL

DECLARE @tableName NVARCHAR(128) = 'Employees';
DECLARE @sql NVARCHAR(MAX);
SET @sql = 'UPDATE ' + @tableName + ' SET Salary = Salary * 1.1 WHERE DepartmentID = @DeptID';
EXEC sp_executesql @sql, N'@DeptID INT', @DeptID = 3;

6. Dynamic SQL with Joins

DECLARE @sql NVARCHAR(MAX);
SET @sql = 'SELECT e.Name, d.DepartmentName FROM Employees e JOIN Departments d ON e.DepartmentID = d.ID WHERE d.Location = @Location';
EXEC sp_executesql @sql, N'@Location NVARCHAR(50)', @Location = 'New York';

7. Dynamic SQL for Creating a Table

DECLARE @sql NVARCHAR(MAX);
SET @sql = 'CREATE TABLE NewTable (ID INT PRIMARY KEY, Name NVARCHAR(100))';
EXEC sp_executesql @sql;

8. Dynamic SQL for Dropping a Table

DECLARE @tableName NVARCHAR(128) = 'OldTable';
DECLARE @sql NVARCHAR(MAX);
SET @sql = 'DROP TABLE ' + @tableName;
EXEC sp_executesql @sql;

9. Dynamic SQL with Error Handling

BEGIN TRY
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'SELECT * FROM NonExistentTable';
    EXEC sp_executesql @sql;
END TRY
BEGIN CATCH
    PRINT 'An error occurred: ' + ERROR_MESSAGE();
END CATCH;

10. Building Dynamic SQL for Reporting

DECLARE @sql NVARCHAR(MAX);
SET @sql = 'SELECT TOP 10 * FROM Employees ORDER BY ' + QUOTENAME(@SortColumn);
EXEC sp_executesql @sql;
