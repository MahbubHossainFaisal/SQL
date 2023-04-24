/*
Index in a view is suppose in a book we have a table where we can
find the contents and the page number of the contents. So we don't need to find
page by page to find the content. We can look at through the table of contents
and find the page of a particular content and go there.
Index works like same.
scans ---> means find content through page by page
seeks ---> means find content through the table of content

*/
-- Creating a view

if exists(Select * From INFORMATION_SCHEMA.VIEWS
Where [TABLE_NAME] = 'ViewByDepartment2' and [TABLE_SCHEMA] = 'dbo')
Drop VIEW dbo.ViewByDepartment2
Go

Create View [dbo].[ViewByDepartment2] With Schemabinding as
Select D.Department, T.EmployeeNumber, T.DateOfTransaction, T.Amount as TotalAmount
from dbo.tbDepartment as D
inner join dbo.tbEmployee as E
on D.Department = E.Department
inner join dbo.tbTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
Where T.EmployeeNumber between 120 and 139
Go


-- creating a unique clustered index for a view
-- So what actually this index will do is it will make the query to run faster
Create Unique clustered Index inx_viewByDepartment2 on dbo.ViewByDepartment2(EmployeeNumber,Department,DateOfTransaction)