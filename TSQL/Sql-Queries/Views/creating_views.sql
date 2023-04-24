-- A view can be thought as either a virtual table or stored query

--https://docs.microsoft.com/en-us/sql/relational-databases/views/views?view=sql-server-ver16

-- Creating a view
CREATE VIEW ViewByDepartment as
SELECT D.Department, T.EmployeeNumber, T.DateOfTransaction, T.Amount as TotalAmount
FROM tbDepartment as D
LEFT JOIN tbEmployee as E
ON D.Department = E.Department
lEFT JOIN tbTransaction as T
ON E.EmployeeNumber = T.EmployeeNumber
WHERE T.EmployeeNumber BETWEEN 120 and 139
WITH CHECK OPTION
Go
-- DROP VIEW ViewByDepartment;

SELECT * FROM ViewByDepartment
Go

CREATE VIEW ViewSummary as 
SELECT D.Department, T.EmployeeNumber as EmpNum, SUM(T.Amount) as TotalAmount
FROM tbDepartment as D
lEFT JOIN tbEmployee as E
on D.Department = E.Department
LEFT JOIN tbTransaction T
on E.EmployeeNumber = T.EmployeeNumber
GROUP BY D.Department,T.EmployeeNumber
GO

SELECT * FROM ViewSummary
GO