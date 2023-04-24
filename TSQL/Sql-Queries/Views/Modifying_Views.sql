-- Altering view

USE [master]
GO

ALTER VIEW [dbo].[ViewByDepartment] as
SELECT D.Department, T.EmployeeNumber, T.DateOfTransaction, T.Amount as TotalAmount
FROM tbDepartment as D
LEFT JOIN tbEmployee as E
ON D.Department = E.Department
lEFT JOIN tbTransaction as T
ON E.EmployeeNumber = T.EmployeeNumber
WHERE T.EmployeeNumber BETWEEN 120 and 139
GO

-- Drop view
DROP VIEW dbo.ViewByDepartment

-- To find all the veiws that are created
SELECT * FROM sys.views