-- Some ways to find the views that has been created also how they have been created

-- No 1:
SELECT V.name, S.text from sys.syscomments as S
inner join sys.views as V
on S.id = v.object_id

-- No 2:
Select object_definition(object_id('dbo.viewByDepartment')) as ViewByDepartmentObject

-- No 3:
Select * from sys.sql_modules

/* So we can see views are open and has no security
if we want to secure it we have to encrypt it using 'With ENCRYPTION' Keyword
Else anyone can see how the views have been created
and also another thing, if we encrypt view we will also not be able to see it later
that how it has been created
**/

-- Creating a view with security encryption


CREATE VIEW ViewByDepartmentEncryption  WITH ENCRYPTION as
SELECT D.Department, T.EmployeeNumber, T.DateOfTransaction, T.Amount as TotalAmount
FROM tbDepartment as D
LEFT JOIN tbEmployee as E
ON D.Department = E.Department
lEFT JOIN tbTransaction as T
ON E.EmployeeNumber = T.EmployeeNumber
WHERE T.EmployeeNumber BETWEEN 120 and 139
Go

-- By doing this no one will ever find how the view has been created, they can only just see it


/* Suppose you have created views based on two tables , tb1,tb2
now tb1 and tb2 denies the select * option means you can't select and see info from those tables
So, as view is created using those table what would happen?
can't we see the view also by selecting?
So, the answer is if view and tables are under same schema view will neglect the table securities
and will allow user to see info
but if the tables are from different schema, view will act according to the table securities
if tables allow view to use select , then it is possible to see the information
else it won't be possible
*/