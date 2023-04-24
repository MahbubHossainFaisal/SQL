-- update the EmployeeNumber from 3 to 194 from table transaction

Begin tran

--SELECT * From tbTransaction where EmployeeNumber = 194

Update tbTransaction
SET EmployeeNumber = 194
output inserted.*, deleted.* -- this line will show the updated rows in the terminal (inserted and deleted rows side by side)
FROM tbTransaction
WHERE EmployeeNumber = 123

--SELECT * From tbTransaction where EmployeeNumber between 123 and 130

rollback tran