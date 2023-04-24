/*
You can't delete from views because
Suppose the view we have created ViewByDepartment
that view was made of joining two different base tables.
So, We know that if we want to modify or insert in views
we can do that only for one base table. Means Suppose view is formed from 
Column 1 from table1 and Column2,Column3,Column4 from table2.
Now if we want to insert in views or modify the views we can do that only for
Column1 or We can do that in Column2,Column2,Column3 together,
We can't insert in all of them together or modify them together.
Same goes for delete statment as delete statement deletes on or more entire rows
So, If we use delete statement it will try to use all the columns of the view
which comes from multiple tables and try to modify and delete rows from that tables
also. So, it's not possible to delete from views unless it's built from a single base table.

*/

-- We can delete rows in view if that view is created from single table

Create View ViewSimple
as
SELECT * From tbTransaction
Go

Begin Tran
Select * From ViewSimple where EmployeeNumber = 132;
delete from ViewSimple
Where EmployeeNumber = 132
Select * From ViewSimple where EmployeeNumber = 132;
Rollback Tran