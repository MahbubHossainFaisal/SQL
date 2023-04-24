-- Unique key
--A unique key is a set of one or more than one fields/columns of a table that uniquely identify a record in a database table.

-- Primary Key
/*
Primary key refers to the minimal set of columns that helps to identify a record in the table uniquely. 
The primary key has a few characteristics. Mainly, two rows cannot have the same primary key value. Moreover, 
each row should have a value for the primary key. Also, the primary key value cannot be null.

*/

-- Surrogate key
/*
 Surrogate key and primary key are two types of keys. The main difference between 
 surrogate key and primary key is that surrogate key is a type of primary key that helps to 
 identify each record uniquely, while the primary key is a set of minimal columns 
 that helps to identify each record uniquely.

*/

-- Making a column a primary key
Alter Table tbEmployee
Add constraint PK_tbEmployee Primary Key(EmployeeNumber);

-- How to drop the primary key constraint
/*
Alter Table tbEmployee
drop constraint PK_tbEmployee
*/

-- Including primary key while creating a table

Create table tbEmployee2
( EmployeeNumber int CONSTRAINT PK_tbEmployee2 PRIMARY KEY IDENTITY(1,1),
-- IDENTITY (1,1) means , EmployeeNumber will be start from 1 and will increase 1 by every row.
--cannot add an identity to an already existing column
-- And when you set IDENTITY you can't insert primary key manually .
-- IF you want to insert, then you have to make IDENTITY_INSERT  ON as it is set to OFF
EmployeeName varchar(20))

/*
So after providing Primary key with an identity
if you insert data , suppose you have inserted three data and they got 1,2,3 as 
primary key. After that you deleted them and again started to insert data.
This time data will be started from 4,5 primary key. Not from 1,2,3
to go back in 1,2,3 you have to truncate the table first and then have to add.
**/

SET IDENTITY_INSERT tbEmployee2 ON
INSERT INTO tbEmployee2 (EmployeeNumber,EmployeeName)
Values (1,'Faisal');
SET IDENTITY_INSERT tbEmployee OFF -- You can set it off too

SELECT IDENT_CURRENT('tbEmployee2'); -- this will return the last primary key of the table

