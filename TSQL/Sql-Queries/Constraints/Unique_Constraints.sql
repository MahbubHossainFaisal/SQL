SELECT EmployeeFirstName,EmployeeGovernmentID FROM tbEmployee
GROUP BY EmployeeFirstName,EmployeeGovernmentID

SELECT * FROM tbEmployee WHERE EmployeeNumber=131

--Add constraint to TableEmployee
ALTER TABLE tbEmployee
ADD CONSTRAINT GovernmentID UNIQUE (EmployeeGovernmentID)

--Add constraint to tbTransaction
Alter TABLE tbTransaction 
ADD CONSTRAINT unqTransaction UNIQUE (Amount,DateOfTransaction,EmployeeNumber)
-- means three of the column together has to be unique else the table won't take any insertion of data


-- without altering table and adding constraint we can do it while creating a table. For example

CREATE Table tbTransaction2
( Amount smallmoney not null,
  DateOfTransaction smalldatetime not null,
  EmployeeNumber int not null,
  Constraint unqTransaction2 UNIQUE (Amount, DateOfTransaction,EmployeeNumber) -- give the  constraint while creating the table
)

 --Drop Table tbTransaction2;

SELECT * FROM tbTransaction2;