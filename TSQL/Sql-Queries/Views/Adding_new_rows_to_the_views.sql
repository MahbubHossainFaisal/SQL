SELECT * FROM ViewByDepartment Order By Department, EmployeeNumber

Begin tran

INSERT into ViewByDepartment(EmployeeNumber,DateOfTransaction,TotalAmount)
values(132,'2015-07-07',999.99)
/*
This insert will work because you have inserted using the three columns that based on
only one base table. But you included department here, you won't be able to insert here
because there are now two base tables where columns are come from. Department is coming from
one table and the other three columns are coming from another table.

*/
/*
And when we insert new rows in views, this will modify the main tables but
we can't see those new data in views as views are already made from previous existing data,
So new data will not be included or updated in view
*/
SELECT * FROM ViewByDepartment Order By Department, EmployeeNumber
-- We will see that the value we inserted in the view also get inserted in the main table
SELECT * FROM tbTransaction Where EmployeeNumber = 132

/*
if views are created using just one base table they can be updatable
but if they are created with multiple tables they are not updatable as they
will try to change in multiple base table columns!
*/

Rollback tran

-- Modifying a view that will also modify the base table

begin tran

--SELECT * FROM ViewByDepartment Order By Department, EmployeeNumber
--SELECt * FROM tbTransaction WHERE EmployeeNumber in (132,142);

UPDATE ViewByDepartment 
SET EmployeeNumber = 142
WHERE EmployeeNumber = 132
-- this will change the main column values also. So if we want to restrict this we have to do it
-- while creating the view. We have to write 'WITH CHECK OPTION' after the where clause.

SELECT * FROM ViewByDepartment WHERE EmployeeNumber = 142
SELECt * FROM tbTransaction WHERE EmployeeNumber in (132,142);

Rollback tran
