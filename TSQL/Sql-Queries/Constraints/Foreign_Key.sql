-- A foreign key of a table references a primary key of another table
-- A foreign Key can be null
/*
Suppose in a car table
Car   --  EmployeeNumber
A			2
B			3
C			Null
D			5

Every car belongs to an employee. But there can be some cars who doesn't belong to any
particular employee actually it can be an office car which is shared by group of employee
So, a foreign key can be null


Then, suppose if a primary key got change, how you can handle the foreign key that is in another table
So basically we can give it a default value, a null or can cascade 
*/

-- creating a foreign key
Alter TABLE tbTransaction
ADD CONSTRAINT FK_tbTransaction_EmployeeNumber FOREIGN KEY (EmployeeNumber)
REFERENCES tbEmployee(EmployeeNumber)
ON UPDATE CASCADE -- this will change the foreign key in tbTransaction as well along with the change of primary key in tbEmployee Table
ON DELETE CASCADE -- when any row will be deleted from tbEmployee rows will be deleted from tbTransaction also which has a same foreign key

-- ON UPDATE SET NULL (This constraint also can be added)
-- ON UPDATE SET DEFAULT (This constraint also can be added)
--ON DELETE SET NULL (This constraint also can be added)
-- ON DELETE SET DEFAULT (This constraint also can be added)

-- drop constraint
/* Alter Table tbTransaction
DROP CONSTRAINT FK_tbTransaction_EmployeeNumber
*/


/* If Suppose I want to change any primary key of tbEmployee this can't be done as
foreign key is associated with it. So I have to add some additional syntax with it
which is - ON UPDATE CASCADE
it will change the foreign key along with primary key, when we will change a primary key.

*/
BEGIN TRAN
--SELECT * FROM tbEmployee

UPDATE tbEmployee SET EmployeeNumber = 9123 WHERE EmployeeNumber = 123;

SELECT E.EmployeeNumber, T.* FROM tbEmployee as E
RIGHT JOIN tbTransaction as T
on E.EmployeeNumber = T.EmployeeNumber
WHERE T.Amount IN (-179.47,786.22,-967.36, 957.03)

ROLLBACK TRAN

-- You can also include foreign key while creating a table just like a primary key syntax