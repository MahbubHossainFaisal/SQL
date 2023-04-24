-- Query from a derived table

Select count(*) as NumberOfDepartments from 
-- this is the derived table
(SELECT Department, count(*) as EmployeeNumberPerDepartment
from tbEmployee
Group By Department) as NewTable;

-- A simple similar query would be 

Select Count(Distinct Department) as NumberOfDept from tbEmployee

-- creating a table by select Statement
SELECT DISTINCT Department, '' as DepartmentHead
INTO tbDepartment  -- into command creates a table
FROM tbEmployee;

-- Now if we want to change the second column to nvarchar we can do that like this

-- First drop the table
--Drop table tbDepartment;
-- Run the modified select statement
SELECT DISTINCT Department, convert(varchar(20),N'') as DepartmentHead
INTO tbDepartment  -- into command creates a table
FROM tbEmployee;

SELECT * From tbDepartment
-- there another option of alter
Alter Table tbDepartment
Alter Column DepartmentHead varchar(30) null;
