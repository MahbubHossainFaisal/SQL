-- If a view exist drop it else create it

IF EXISTS(SELECT * FROM sys.views WHERE name = 'ViewByDepartment')
	DROP VIEW dbo.ViewByDepartment
Go

USE [master]
GO

CREATE VIEW [dbo].[ViewByDepartment] as
SELECT D.Department, T.EmployeeNumber, T.DateOfTransaction, T.Amount as TotalAmount
FROM tbDepartment as D
LEFT JOIN tbEmployee as E
ON D.Department = E.Department
lEFT JOIN tbTransaction as T
ON E.EmployeeNumber = T.EmployeeNumber
WHERE T.EmployeeNumber BETWEEN 120 and 139
GO


-- Find the all tables that are created
SELECT * FROM sys.tables